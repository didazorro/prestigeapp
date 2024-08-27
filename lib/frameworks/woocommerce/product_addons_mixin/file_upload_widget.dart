import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import '../../../services/services.dart';
import 'expansion_tile_widget.dart';

class FileUploadWidget extends StatefulWidget {
  final ProductAddons item;
  final Map<String, AddonsOption> selected;
  final void Function(Map<String, AddonsOption>)? onSelectProductAddons;
  final String? durationUnit;
  const FileUploadWidget({
    required this.item,
    required this.selected,
    this.onSelectProductAddons,
    this.durationUnit,
  });

  @override
  StateFileUploadWidget createState() => StateFileUploadWidget();
}

class StateFileUploadWidget extends State<FileUploadWidget> {
  bool isUploading = false;
  bool get mediaTypeAllowed =>
      (kProductAddons['allowImageType'] ?? true) ||
      (kProductAddons['allowVideoType'] ?? true);

  FileType get allowedMediaFileType {
    if ((kProductAddons['allowImageType'] ?? true) &&
        (kProductAddons['allowVideoType'] ?? true)) {
      return FileType.media;
    }
    if ((kProductAddons['allowImageType'] ?? true) &&
        !(kProductAddons['allowVideoType'] ?? true)) {
      return FileType.image;
    }
    if (!(kProductAddons['allowImageType'] ?? true) &&
        (kProductAddons['allowVideoType'] ?? true)) {
      return FileType.video;
    }
    throw Exception('No file type is supported!');
  }

  bool get customTypeAllowed => (kProductAddons['allowCustomType'] ?? false);

  FileType get allowedCustomFileType {
    final allowedTypes = kProductAddons['allowedCustomType'];
    if ((kProductAddons['allowCustomType'] ?? false) &&
        (allowedTypes is List && allowedTypes.isNotEmpty)) {
      return FileType.custom;
    }
    if ((kProductAddons['allowCustomType'] ?? false) &&
        (allowedTypes == null ||
            (allowedTypes is List && allowedTypes.isEmpty))) {
      return FileType.any;
    }
    throw Exception('No file type is supported!');
  }

  void _showOption(BuildContext context,
      {VoidCallback? onFileUploadStart,
      Function(List<String?> fileUrl)? onFileUploaded,
      VoidCallback? onFileUploadFailed}) {
    showModalBottomSheet(
      context: context,
      builder: (modalContext) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: <Widget>[
                  if (mediaTypeAllowed)
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(modalContext);
                        selectFile(
                          context,
                          allowedMediaFileType,
                          onFileSelected: onFileUploaded,
                          onFileUploadStart: onFileUploadStart,
                          onFileUploadFailed: onFileUploadFailed,
                        );
                      },
                      child: _UploadTypeIcon(
                        icon: CupertinoIcons.arrow_up_circle,
                        text: S.of(context).gallery,
                      ),
                    ),
                  const SizedBox(width: 20),
                  if (customTypeAllowed)
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(modalContext);
                        selectFile(
                          context,
                          allowedCustomFileType,
                          onFileSelected: onFileUploaded,
                          onFileUploadStart: onFileUploadStart,
                          onFileUploadFailed: onFileUploadFailed,
                        );
                      },
                      child: _UploadTypeIcon(
                        icon: CupertinoIcons.doc,
                        text: S.of(context).files,
                      ),
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  S
                      .of(context)
                      .maximumFileSizeMb(kProductAddons['fileUploadSizeLimit']),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> selectFile(BuildContext context, FileType fileType,
      {VoidCallback? onFileUploadStart,
      Function(List<String?> fileUrls)? onFileSelected,
      VoidCallback? onFileUploadFailed}) async {
    final userModel = Provider.of<UserModel>(context, listen: false);

    if (userModel.user?.cookie == null) {
      await showDialog(
          context: context,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              content: Text(S.of(context).pleaseSignInBeforeUploading),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                  },
                  child: Text(S.of(context).cancel),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                    Navigator.of(
                      App.fluxStoreNavigatorKey.currentContext!,
                    ).pushNamed(RouteList.login);
                  },
                  child: Text(
                    S.of(context).signIn,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          });
      return;
    }

    final result = await FilePicker.platform.pickFiles(
      withData: true,
      allowMultiple: (kProductAddons['allowMultiple'] ?? false),
      type: fileType,
      allowedExtensions: fileType == FileType.custom
          ? kProductAddons['allowedCustomType']
          : null,
    );
    if (result?.files.isEmpty ?? true) {
      /// Cancel select file.
      Tools.showSnackBar(
        ScaffoldMessenger.of(context),
        S.of(context).selectFileCancelled,
      );
      return;
    }

    /// Check file size limit.
    final double? fileSizeLimit =
        kProductAddons['fileUploadSizeLimit'] is double
            ? kProductAddons['fileUploadSizeLimit']
            : double.tryParse('${kProductAddons['fileUploadSizeLimit']}');
    if (fileSizeLimit != null && fileSizeLimit > 0.0) {
      for (var file in result!.files) {
        if (file.size.toDouble() > (fileSizeLimit * 1000000)) {
          Tools.showSnackBar(
            ScaffoldMessenger.of(context),
            S.of(context).fileIsTooBig,
          );
          return;
        }
      }
    }

    onFileUploadStart!();

    try {
      final urls = <String?>[];
      for (var file in result!.files) {
        await Services().api.uploadImage({
          'title': {'rendered': path.basename(file.path.toString())},
          'media_attachment': base64.encode(file.bytes!),
          'media_path': 'product_addons_uploads',
        }, userModel.user?.cookie)!.then((photo) {
          urls.add(photo['guid']['rendered']);
        });
      }
      onFileSelected!(urls);
    } catch (err, trace) {
      printError(err, trace);
      onFileUploadFailed!();

      try {
        Tools.showSnackBar(
          ScaffoldMessenger.of(context),
          S.of(context).fileUploadFailed,
        );
      } catch (_) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    var values = widget.selected.values;
    var label = values.isNotEmpty ? values.first.label?.split('/') : null;

    return ExpansionTileWidget(
      item: widget.item,
      selected: widget.selected,
      subtitle: (label?.isNotEmpty ?? false) ? label?.last : null,
      durationUnit: widget.durationUnit,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: 8.0,
          ),
          child: Row(
            children: [
              Expanded(
                child:
                    StatefulBuilder(builder: (context, StateSetter setState) {
                  return TextButton.icon(
                    onPressed: isUploading
                        ? null
                        : () => _showOption(
                              context,
                              onFileUploadStart: () {
                                isUploading = true;
                                setState(() {});
                              },
                              onFileUploadFailed: () {
                                isUploading = false;
                                setState(() {});
                              },
                              onFileUploaded: (List<String?> fileUrls) {
                                isUploading = false;
                                setState(() {});
                                for (var url in fileUrls) {
                                  /// Overwrite previous file if multiple files not allowed.
                                  var key = kProductDetail.allowMultiple
                                      ? url?.split('/').last
                                      : widget.item.name;
                                  var selected = Map<String, AddonsOption>.from(
                                    widget.selected,
                                  );
                                  if (key != null) {
                                    selected[key] = AddonsOption(
                                      parent: widget.item.name,
                                      label: url,
                                      type: widget.item.type,
                                      display: widget.item.display,
                                      fieldName: widget.item.fieldName,
                                      priceType: widget.item.priceType,
                                    );
                                  }
                                  widget.onSelectProductAddons?.call(selected);
                                }
                              },
                            ),
                    icon: isUploading
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Theme.of(context).primaryColor),
                            ),
                          )
                        : const Icon(
                            CupertinoIcons.doc_text,
                          ),
                    label: Text(
                      (isUploading
                              ? S.of(context).uploading
                              : S.of(context).uploadFile)
                          .toUpperCase(),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _UploadTypeIcon extends StatelessWidget {
  final IconData? icon;
  final String? text;

  const _UploadTypeIcon({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (icon != null)
          Icon(
            icon,
            size: 50,
            color: Theme.of(context).primaryColor,
          ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            text ?? '',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
        ),
      ],
    );
  }
}
