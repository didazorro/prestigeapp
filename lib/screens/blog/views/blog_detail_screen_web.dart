import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/blog.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../services/services.dart';
import '../../../widgets/blog/detailed_blog_mixin.dart';
import '../../../widgets/html/index.dart';
import '../../../widgets/web_layout/web_layout.dart';
import '../../../widgets/web_layout/widgets/path_header_widget.dart';
import '../../base_screen.dart';
import '../../common/app_bar_mixin.dart';
import '../models/list_blog_model.dart';

class BlogDetailScreenWeb extends StatefulWidget {
  final Blog? blog;
  final String? id;
  final List<Blog>? listBlog;

  const BlogDetailScreenWeb({
    super.key,
    required this.blog,
    this.id,
    this.listBlog,
  });

  @override
  BaseScreen<BlogDetailScreenWeb> createState() => _BlogDetailScreenWebState();
}

class _BlogDetailScreenWebState extends BaseScreen<BlogDetailScreenWeb>
    with AppBarMixin, DetailedBlogMixin {
  PageController controller = PageController(initialPage: 0);
  Blog blog = const Blog.empty(1);
  var listBlog = <Blog>[];

  @override
  void initState() {
    blog = widget.blog ?? blog;
    listBlog = List<Blog>.from(widget.listBlog ?? []);
    super.initState();
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    if (widget.id != null) {
      blog = await Services().api.getBlogById(widget.id);
      setState(() {});
    }

    /// This case handle for the Notion platform
    /// The blog item from List Blog get from Notion does not contain the content
    /// So need get content of the blog in the BlogDetail
    if (blog.content.isEmpty) {
      await Services().api.getBlogContent(blog.id).then((content) {
        if (content != null) {
          blog = blog.copyWith(content: content);
          setState(() {});
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return renderScaffold(
      routeName: RouteList.detailBlog,
      child: Builder(
        builder: (context) {
          return SliverWebLayout(
            slivers: [
              SliverToBoxAdapter(
                child: LayoutLimitWidthScreen(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        blog.title,
                        softWrap: true,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 20),
                      renderAuthorInfo(blog, context),
                      const SizedBox(height: 20),
                      HtmlWidget(
                        blog.content,
                        textStyle: const TextStyle(
                          fontSize: 18,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: LayoutLimitWidthScreen(
                  child: renderRelatedBlog(
                    blog.categoryId,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
            pathHeaders: [
              PathHeaderItem(title: S.of(context).blog),
            ],
          );
        },
      ),
    );
  }
}
