import 'dart:math';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:inspireui/extensions.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../../models/app_model.dart';
import 'under_line_widget.dart';

const _maxItemsSuggestion = 8;

class SearchSuggestionWidget extends StatefulWidget {
  const SearchSuggestionWidget({
    super.key,
    required this.posWidget,
    this.onPop,
    required this.searchFieldController,
    required this.onSubmit,
  });

  final Offset posWidget;
  final void Function()? onPop;
  final TextEditingController searchFieldController;
  final void Function(String) onSubmit;

  @override
  State<SearchSuggestionWidget> createState() => _SearchSuggestionWidgetState();
}

class _SearchSuggestionWidgetState extends State<SearchSuggestionWidget> {
  List<String>? _suggestSearch;
  var _opacity = 0.0;

  String get _searchKeyword => widget.searchFieldController.text.trim();

  List<String> get suggestSearch =>
      _suggestSearch
          ?.where((s) => s.toLowerCase().contains(_searchKeyword.toLowerCase()))
          .toList() ??
      <String>[];

  void onSearchTextChange() {
    EasyDebounce.debounce('searchAppBar', const Duration(milliseconds: 600),
        () {
      setState(() {});
    });
  }

  void _onSubmit(String keyword) => widget.onSubmit(keyword);

  @override
  void initState() {
    super.initState();

    widget.searchFieldController.addListener(onSearchTextChange);
    WidgetsBinding.instance.endOfFrame.then((value) {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  void dispose() {
    widget.searchFieldController.removeListener(onSearchTextChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _suggestSearch =
        Provider.of<AppModel>(context).appConfig!.searchSuggestion ?? [''];

    return LayoutBuilder(
      builder: (_, constrains) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: constrains.maxWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.grey),
              ),
              padding: EdgeInsetsDirectional.only(
                start: context.isRtl
                    ? (constrains.maxWidth - widget.posWidget.dx)
                    : widget.posWidget.dx,
              ),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (suggestSearch.isEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          S.of(context).noSuggestionSearch,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.5),
                                  ),
                        ),
                      )
                    else ...[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          _suggestSearch?[0] ?? '',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.5),
                                  ),
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            min(suggestSearch.length, _maxItemsSuggestion),
                        itemBuilder: (_, index) {
                          final keyword = suggestSearch[index];

                          if (index == 0 &&
                              suggestSearch.length > 1 &&
                              keyword == (_suggestSearch?[0] ?? '-1')) {
                            return const SizedBox();
                          }

                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: UnderlineWidget(
                                    onTap: () => _onSubmit(keyword),
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text(keyword),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: widget.onPop,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: _opacity,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 3000,
                  decoration: const BoxDecoration(color: Colors.black26),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
