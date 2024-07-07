import 'package:flutter/material.dart';

import '../../modules/dynamic_layout/helper/helper.dart';
import '../home/preview_overlay.dart';
import 'appbar_web.dart';
import 'footer_web.dart';
import 'web_layout_constant.dart';
import 'widgets/header_action.dart';
import 'widgets/path_header_widget.dart';

class SliverWebLayout extends StatefulWidget {
  const SliverWebLayout({
    super.key,
    this.scrollController,
    required this.slivers,
    this.cacheExtent,
    this.physics,
    this.pathHeaders,
    this.actionBuilder,
    this.searchText,
  });

  final ScrollController? scrollController;
  final List<Widget> slivers;
  final String? searchText;
  final double? cacheExtent;
  final ScrollPhysics? physics;
  final List<PathHeaderItem>? pathHeaders;
  final Widget Function()? actionBuilder;

  @override
  State<SliverWebLayout> createState() => _SliverWebLayoutState();
}

class _SliverWebLayoutState extends State<SliverWebLayout> {
  final _globalKey = GlobalKey();
  late final _scrollController = widget.scrollController ?? ScrollController();
  final _ctrlHeightSpacer = ValueNotifier<double>(0.0);

  void _mathSize() {
    if (_globalKey.currentContext != null) {
      final box = _globalKey.currentContext?.findRenderObject() as RenderBox;

      final pos = box.localToGlobal(Offset.zero);

      final sizeUsed = pos.dy + _scrollController.position.pixels;
      const heightFooter = 260.0;
      final sizeSpacer =
          MediaQuery.sizeOf(context).height - heightFooter - sizeUsed;

      if (sizeSpacer > 0) {
        _ctrlHeightSpacer.value = sizeSpacer;
      } else {
        _ctrlHeightSpacer.value = 0;
      }
    }
  }

  bool _listenerScroll(Notification notification) {
    _mathSize();
    return true;
  }

  @override
  void dispose() {
    _ctrlHeightSpacer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _mathSize();

    return NotificationListener(
      onNotification: _listenerScroll,
      child: CustomScrollView(
        cacheExtent: widget.cacheExtent ?? 2000.0,
        slivers: [
          ...[
            const SliverToBoxAdapter(child: HeaderActionWeb()),
            SliverAppBar(
              pinned: false,
              snap: true,
              floating: true,
              titleSpacing: 0,
              elevation: 0.2,
              forceElevated: true,
              automaticallyImplyLeading: false,
              toolbarHeight: WebLayoutConstant.kHeightAppBarWeb,
              leadingWidth: 0.0,
              leading: const SizedBox(),
              title: PreviewOverlay(
                index: 0,
                builder: (value) {
                  return AppBarWeb(
                    actionBuilder: widget.actionBuilder,
                    searchText: widget.searchText,
                  );
                },
              ),
            ),
          ],
          if (widget.pathHeaders?.isNotEmpty ?? false)
            SliverToBoxAdapter(
              child: LayoutLimitWidthScreen(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                backgroundColor: Theme.of(context).colorScheme.surface,
                child: PathHeaderWidget(items: widget.pathHeaders!),
              ),
            ),
          ...widget.slivers,
          SliverToBoxAdapter(
            child: SizedBox(key: _globalKey),
          ),
          SliverToBoxAdapter(
            child: ValueListenableBuilder(
              valueListenable: _ctrlHeightSpacer,
              builder: (_, height, __) {
                return Container(
                  color: Colors.transparent,
                  width: 300,
                  height: height,
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: const FooterWeb(),
            ),
          ),
        ],
        controller: _scrollController,
        physics: widget.physics ?? const BouncingScrollPhysics(),
      ),
    );
  }
}
