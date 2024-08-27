import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart' show Skeleton;
import 'package:provider/provider.dart';

// import 'package:responsive_builder/responsive_builder.dart';

import '../../../common/constants.dart';
import '../../../routes/flux_navigate.dart';
import '../../../screens/base_screen.dart';
import '../../../screens/blog/index.dart';
import '../../../widgets/blog/blog_grid_item_web.dart';
import '../../../widgets/common/auto_silde_show.dart';
import '../../../widgets/common/background_color_widget.dart';
import '../helper/helper.dart';
import '../index.dart' show BlogConfig, HeaderView;

class BlogGridWeb extends StatefulWidget {
  final BlogConfig? config;

  const BlogGridWeb({
    super.key,
    this.config,
  });

  @override
  BaseScreen<BlogGridWeb> createState() => _BlogGridWebState();
}

class _BlogGridWebState extends BaseScreen<BlogGridWeb> {
  PageController? pageController;
  final viewportFraction = 0.9;

  @override
  void initState() {
    pageController = PageController(viewportFraction: viewportFraction);

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ListBlogModel>(context, listen: false).getBlogs();
    });
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }

  Widget _buildHeader(
    BuildContext context,
    List<Blog>? blogs, {
    double padding = 10,
  }) {
    if (widget.config?.name != null) {
      var showSeeAllLink = widget.config?.layout != 'instagram';
      return HeaderView(
        headerText: widget.config?.name ?? '',
        showSeeAll: showSeeAllLink,
        horizontalMargin: padding,
        callback: () => Navigator.of(context).pushNamed(RouteList.listBlog),
      );
    }
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    var isDesktop = Layout.isDisplayDesktop(context);
    var isTablet = Helper.isTablet(MediaQuery.of(context));
    var offset = (widget.config?.innerPadding ?? 0.0) + 11;
    if ((widget.config?.hideDate ?? true) &&
        (widget.config?.hideAuthor ?? true) &&
        (widget.config?.hideComment ?? true)) {
      offset -= 11.0;
    }
    offset *= 3.0 + 1;
    var minHeight = isDesktop
        ? screenSize.width * 0.32
        : isTablet
            ? 350 + offset
            : 250 + offset;
    // var minHeight = getValueForScreenType<double>(
    //   context: context,
    //   mobile: 250 + offset,
    //   tablet: 430 + offset,
    //   desktop: screenSize.height * 2 / 3 + offset,
    // );

    return Container(
      constraints: const BoxConstraints(
        minHeight: 350,
      ),
      // height: minHeight,
      child: Consumer<ListBlogModel>(builder: (_, model, __) {
        final listBlog = model.blogs?.take(12).toList();
        if (listBlog == null || listBlog.isEmpty) {
          return Container(
            height: minHeight,
            padding: EdgeInsets.symmetric(
              horizontal: widget.config?.padding ?? 8.0,
            ),
            child: Column(
              children: <Widget>[
                _buildHeader(context, null),
                const Expanded(child: _BlogViewSkeleton()),
                const Expanded(child: _BlogViewSkeleton()),
                const Expanded(child: _BlogViewSkeleton()),
              ],
            ),
          );
        }
        final enableBG = widget.config?.backgroundColor != null ||
            (widget.config?.enableBackground ?? false);

        final crossAxisCount = isDesktop ? 2 : 1;

        final body = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildHeader(context, listBlog,
                padding: widget.config?.padding ?? 8.0),
            BackgroundColorWidget(
              enable: enableBG,
              color: widget.config?.backgroundColor != null
                  ? HexColor.fromJson(widget.config?.backgroundColor)
                  : null,
              child: GridView.count(
                crossAxisCount: crossAxisCount,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: widget.config?.padding ?? 8.0,
                  vertical: 8.0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 3.5,
                mainAxisSpacing: 24.0,
                crossAxisSpacing: 32.0,
                children: List.generate(4, (index) {
                  final blog = listBlog[index];
                  return BlogGridItemWeb(
                    blog: blog,
                    radius: widget.config?.radius ?? 0.0,
                    config: widget.config!,
                    onTap: () => FluxNavigate.pushNamed(
                      RouteList.detailBlog,
                      arguments: BlogDetailArguments(
                        blog: blog,
                        listBlog: listBlog.toList(),
                      ),
                      context: context,
                    ),
                  );
                }),
              ),
            ),
          ],
        );

        return HandleAutoSlide.list(
          numberOfItems: listBlog.length,
          controller: pageController!,
          durationAutoSliding: widget.config!.durationAutoSliding,
          enable: widget.config!.enableAutoSliding,
          child: body,
        );
      }),
    );
  }
}

class _BlogViewSkeleton extends StatelessWidget {
  const _BlogViewSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 4,
            child: Skeleton(),
          ),
          SizedBox(width: 12),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeleton(
                  width: 200,
                  height: 20,
                ),
                SizedBox(height: 8),
                Skeleton(
                  width: 100,
                  height: 16,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
