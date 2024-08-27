import 'package:flutter/material.dart';

import '../../common/extensions/buildcontext_ext.dart';
import '../../models/entities/blog.dart';

class ShareButton extends StatelessWidget {
  final Blog blog;

  const ShareButton({required this.blog});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.shareLink(blog.link),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          Icons.share,
          size: 18.0,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
