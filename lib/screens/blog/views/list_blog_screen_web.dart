import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../modules/dynamic_layout/config/blog_config.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../widgets/blog/blog_action_button_mixin.dart';
import '../../../widgets/blog/blog_grid_item_vertical_web.dart';
import '../../../widgets/blog/blog_grid_item_web.dart';
import '../../../widgets/web_layout/web_layout.dart';
import '../../../widgets/web_layout/widgets/path_header_widget.dart';
import '../../base_screen.dart';
import '../../common/app_bar_mixin.dart';
import '../models/list_blog_model.dart';

const _numberOfItemsForFirstLayout = 4;
const _borderRadius = 8.0;

class ListBlogScreenWeb extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListBlogScreenWebState();
}

class _ListBlogScreenWebState extends BaseScreen<ListBlogScreenWeb>
    with AppBarMixin, BlogActionButtonMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    screenScrollController = _scrollController;
  }

  @override
  Widget build(BuildContext context) {
    return renderScaffold(
      routeName: RouteList.listBlog,
      child: Consumer<ListBlogModel>(builder: (context, provider, child) {
        final data = provider.data;
        if (data.isEmpty) {
          return const SizedBox();
        }
        final firstLayoutData =
            data.skip(1).take(_numberOfItemsForFirstLayout - 1).toList();
        final otherLayoutData =
            data.skip(_numberOfItemsForFirstLayout).toList();
        return SliverWebLayout(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(
                bottom: 32,
              ),
              sliver: SliverToBoxAdapter(
                child: LayoutLimitWidthScreen(
                  child: SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: BlogGridItemVerticalWeb(
                            blog: data.first,
                            radius: _borderRadius,
                            config: BlogConfig(),
                            onTap: () => onTapBlog(
                              blog: data.first,
                              blogs: provider.data,
                              forceRootNavigator: true,
                              context: context,
                            ),
                          ),
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: firstLayoutData
                                .map((blog) => Expanded(
                                      child: BlogGridItemWeb(
                                        blog: blog,
                                        radius: _borderRadius,
                                        borderAllForImage: true,
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 0,
                                        ),
                                        config: BlogConfig(),
                                        onTap: () => onTapBlog(
                                          blog: blog,
                                          blogs: provider.data,
                                          forceRootNavigator: true,
                                          context: context,
                                        ),
                                      ),
                                    ))
                                .expand((element) =>
                                    [element, const Divider(height: 32)])
                                .toList()
                              ..removeLast(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // TODO: Fix lazy loading
            SliverToBoxAdapter(
              child: LayoutLimitWidthScreen(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32,
                    childAspectRatio: 4.0,
                  ),
                  itemCount: provider.data.length - 4,
                  itemBuilder: (context, index) {
                    final blog = otherLayoutData[index];
                    return BlogGridItemWeb(
                      blog: blog,
                      radius: _borderRadius,
                      config: BlogConfig(),
                      onTap: () => onTapBlog(
                        blog: blog,
                        blogs: provider.data,
                        forceRootNavigator: true,
                        context: context,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
          pathHeaders: [
            PathHeaderItem(title: S.of(context).blog),
          ],
        );
      }),
    );
  }
}
