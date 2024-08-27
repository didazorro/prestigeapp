import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/components/extensions/build_context_ext.dart';
import '../../../../core/components/tools/tools.dart';
import '../../../../domain/entities/message/message.dart';
import 'text_container.dart';

class LoadedCard extends StatelessWidget {
  const LoadedCard({
    super.key,
    required this.message,
    this.copy,
    this.share,
    this.remove,
  });

  final Message message;
  final Function()? copy;
  final Function()? share;
  final Function()? remove;

  @override
  Widget build(BuildContext context) {
    final isRTL = context.isRTL();
    final isUser = message.type.isUser;
    var backgroundColor = isUser
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).scaffoldBackgroundColor;
    if (message.status.isError) {
      backgroundColor = Theme.of(context).colorScheme.error;
    }

    return Column(
      crossAxisAlignment:
          isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        CupertinoContextMenu.builder(
          actions: <Widget>[
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
                copy?.call();
              },
              trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
              child: Text(S.of(context).copy_openai),
            ),
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
                share?.call();
              },
              trailingIcon: CupertinoIcons.share,
              child: Text(S.of(context).share_openai),
            ),
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.of(context).pop();
                remove?.call();
              },
              isDestructiveAction: true,
              trailingIcon: CupertinoIcons.delete,
              child: Text(S.of(context).delete_openai),
            ),
          ],
          builder: (BuildContext context, Animation<double> animation) {
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(15),
                  topRight: const Radius.circular(15),
                  bottomLeft:
                      Radius.circular((message.type.isUser ^ isRTL) ? 15 : 0),
                  bottomRight:
                      Radius.circular((message.type.isUser ^ isRTL) ? 0 : 15),
                ),
              ),
              child: SingleChildScrollView(
                child: animation.value == 1
                    ? SelectableText(
                        message.content,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              color:
                                  Tools.textColorForBackground(backgroundColor),
                            ),
                      )
                    : Text(
                        message.content,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              color:
                                  Tools.textColorForBackground(backgroundColor),
                            ),
                      ),
              ),
            );
          },
        ),
        const SizedBox(height: 2),
        Text(
          DateFormat.Hm().format(message.createdAt),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class LoadedCard2 extends StatelessWidget {
  const LoadedCard2({
    super.key,
    required this.message,
    this.remove,
    this.copy,
    this.share,
  });

  final Message message;
  final Function()? copy;
  final Function()? share;
  final Function()? remove;

  void longPress(context) {
    HapticFeedback.vibrate();
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext _, __, ___) {
          return Popup(
            card: TextContainer(
              message: message,
              canSelectable: true,
            ),
            copy: copy,
            remove: remove,
            share: share,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: message.type.isUser
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onLongPress: () => longPress(context),
          child: TextContainer(message: message),
        ),
        const SizedBox(height: 2),
        Text(
          DateFormat.Hm().format(message.createdAt),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class Popup extends StatefulWidget {
  const Popup({
    super.key,
    required this.card,
    this.copy,
    this.share,
    this.remove,
  });

  final Widget card;
  final Function()? copy;
  final Function()? share;
  final Function()? remove;

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation2;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    );

    _slideAnimation2 =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(_animationController);

    WidgetsBinding.instance.endOfFrame
        .then((value) => _animationController.forward());
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> popAnimation() async {
    await _animationController
        .reverse()
        .whenComplete(() => Navigator.of(context).pop());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _animationController
                  .reverse()
                  .whenComplete(() => Navigator.of(context).pop());
            },
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Container(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: SafeArea(
                      bottom: false,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Center(child: widget.card),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SlideTransition(
                    position: _slideAnimation2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      padding: const EdgeInsets.only(bottom: 36, top: 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () async {
                                await popAnimation();
                                widget.copy?.call();
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.doc_on_clipboard,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(S.of(context).copy_openai),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                popAnimation();
                                widget.share?.call();
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.share,
                                    color: theme.colorScheme.primary,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(S.of(context).share_openai),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () async {
                                await popAnimation();
                                widget.remove?.call();
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.delete,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(S.of(context).delete_openai),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
