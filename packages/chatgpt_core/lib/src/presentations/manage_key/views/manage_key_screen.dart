import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';
import '../../../core/components/extensions/build_context_ext.dart';
import '../bloc/manage_key_bloc.dart';

class ManageKeyScreen extends StatefulWidget {
  const ManageKeyScreen({super.key});

  static const routeName = 'dialog-manage-key';

  @override
  State<ManageKeyScreen> createState() => _ManageKeyScreenState();
}

class _ManageKeyScreenState extends State<ManageKeyScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  ManageKeyBloc get _manageKeyBloc => context.read<ManageKeyBloc>();

  void _onSave() {
    if (_textEditingController.text.isEmpty) {
      context.showMessage(S.of(context).pleaseInputKey_openai);

      return;
    }
    _manageKeyBloc.add(ManageKeyEvent.saveKey(_textEditingController.text));
  }

  void _onRemove() {
    context
        .showCupertinoConfirmDialog(
            content: S.of(context).confirmRemoveKey_openai)
        .then((value) {
      if (value == true) {
        _manageKeyBloc.add(const ManageKeyEvent.removeKey());
      }
    });
  }

  void _listenStateChanged(BuildContext _, ManageKeyState state) {
    state.whenOrNull(
      loadKeySuccess: (key) {
        _textEditingController.text = key;
      },
      removeKeySuccess: () {
        context
            .showNoticeDialog(S.of(context).removeKeySuccess_openai)
            .then((value) {
          Navigator.pop(context);
        });
      },
      removeKeyFailure: () {
        context.showMessage(S.of(context).removeKeyFailed_openai);
      },
      saveKeySuccess: () {
        context
            .showNoticeDialog(S.of(context).saveKeySuccess_openai)
            .then((value) {
          Navigator.pop(context);
        });
      },
      saveKeyFailure: () {
        context.showNoticeDialog(S.of(context).saveKeyFailed_openai);
      },
      invalidKey: () {
        context.showNoticeDialog(S.of(context).invalidKey_openai);
      },
    );
  }

  String formatDate(DateTime item) {
    final formatDateTime = DateFormat('MM-dd-yyyy HH:mm');

    return formatDateTime.format(item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).manage_openai),
      ),
      body: BlocConsumer<ManageKeyBloc, ManageKeyState>(
        listener: _listenStateChanged,
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // if (state is LoadKeySuccess &&
                    //     state.expiredDate != null) ...[
                    //   const Text(
                    //     'PRO',
                    //     style: TextStyle(
                    //       color: Colors.green,
                    //       fontSize: 24,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    //   const SizedBox(height: 4),
                    //   Text(
                    //     '${S.of(context).subscriptionExpiredDate(
                    //           formatDate(state.expiredDate!.toLocal()),
                    //         )} (${state.expiredDate!.difference(DateTime.now()).remainingDateText} ${S.of(context).remaining})',
                    //     style: const TextStyle(
                    //       color: Colors.red,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ],
                    // const SizedBox(height: 12),
                    Text(S.of(context).introAboutKey_openai),
                    const SizedBox(height: 24),
                    TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: Text(S.of(context).putKeyHere_openai),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: _onSave,
                      icon: const Icon(Icons.save),
                      label: Text(S.of(context).save_openai),
                    ),
                    if (state is LoadKeySuccess && state.key.isNotEmpty)
                      ElevatedButton.icon(
                        onPressed: _onRemove,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.error,
                        ),
                        icon: const Icon(Icons.delete),
                        label: Text(S.of(context).remove_openai),
                      ),
                  ],
                ),
              ),
              Positioned.fill(
                child: state.maybeWhen(
                  inProgress: () {
                    return Container(
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.4)),
                      child: const Center(
                        child: CupertinoActivityIndicator(radius: 12),
                      ),
                    );
                  },
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
