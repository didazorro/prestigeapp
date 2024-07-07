import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UnderlineWidget extends StatefulWidget {
  const UnderlineWidget({
    super.key,
    required this.child,
    this.onHover,
    this.onTap,
    this.onExit,
  });

  final Widget child;
  final void Function(PointerHoverEvent)? onHover;
  final void Function()? onExit;
  final void Function()? onTap;

  @override
  State<UnderlineWidget> createState() => _UnderlineWidgetState();
}

class _UnderlineWidgetState extends State<UnderlineWidget> {
  double widthItem = 0;
  double _sizeUnderline = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (context.size != null) {
        widthItem = context.size!.width;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      hitTestBehavior: HitTestBehavior.translucent,
      onHover: (event) {
        widget.onHover?.call(event);
        setState(() {
          _sizeUnderline = widthItem;
        });
      },
      onExit: (event) {
        widget.onExit?.call();
        setState(() {
          _sizeUnderline = 0;
        });
      },
      onEnter: (event) {
        widget.onExit?.call();
        _sizeUnderline = 0;
      },
      child: GestureDetector(
        onTap: widget.onTap,
        behavior: HitTestBehavior.translucent,
        child: LayoutBuilder(builder: (_, constraints) {
          return Stack(
            children: [
              Center(child: widget.child),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    child: Container(
                      key: ValueKey(
                          'undelineSize$_sizeUnderline${widget.child.hashCode}'),
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                      width: _sizeUnderline,
                      height: 1,
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
