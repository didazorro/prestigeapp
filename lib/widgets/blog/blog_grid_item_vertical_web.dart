import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/extensions/string_ext.dart';
import '../../models/entities/blog.dart';
import '../../modules/dynamic_layout/config/blog_config.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../common/flux_image.dart';

class BlogGridItemVerticalWeb extends StatelessWidget {
  final Blog blog;
  final VoidCallback onTap;
  final double radius;
  final double innerPadding;
  final Color background;
  final Color itemBackgroundColor;
  final BlogConfig config;
  final BoxBorder? border;
  final bool borderAllForImage;

  const BlogGridItemVerticalWeb({
    required this.blog,
    required this.onTap,
    this.radius = 0.0,
    this.innerPadding = 0.0,
    this.background = Colors.transparent,
    this.itemBackgroundColor = Colors.transparent,
    this.border,
    this.borderAllForImage = false,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    var padding = const EdgeInsets.all(24.0);

    if (!Layout.isDisplayDesktop(context)) {
      padding = padding / 1.5;
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: itemBackgroundColor,
          border: border ??
              Border.all(
                color: Theme.of(context).disabledColor,
                width: 0.5,
              ),
        ),
        padding: EdgeInsets.all(innerPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 9,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(radius),
                  bottom: Radius.circular(borderAllForImage ? radius : 0),
                ),
                child: FluxImage(
                  imageUrl: blog.imageFeature,
                  fit: BoxFit.cover,
                  // isVideo: blog.videoUrl.isNotEmpty,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!config.hideTitle)
                      Text(
                        blog.title,
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 2,
                      ),
                    const SizedBox(height: 10),
                    Wrap(
                      children: [
                        if (!config.hideDate && blog.date.isNotEmpty)
                          Text(
                            blog.date,
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        if (!config.hideAuthor && blog.author.isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(
                                left: config.hideDate ? 0 : 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  CupertinoIcons.person_alt,
                                  size: 11,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.5),
                                ),
                                const SizedBox(width: 2.0),
                                Text(
                                  blog.author,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (!config.hideComment)
                          Padding(
                            padding: EdgeInsets.only(
                                left: (config.hideAuthor && config.hideDate)
                                    ? 0
                                    : 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  CupertinoIcons.chat_bubble_text_fill,
                                  size: 11,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.5),
                                ),
                                const SizedBox(width: 2.0),
                                Text(
                                  '${blog.commentCount}',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Text(
                        blog.content.replaceHtmlTag(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
