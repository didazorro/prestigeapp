import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspireui/inspireui.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../models/app_model.dart';
import '../common/app_bar_mixin.dart';
import 'models/videos_model.dart';
import 'widgets/video_page.dart';

const offsetWillLoadMore = 3;

class VideosScreen extends StatelessWidget {
  const VideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<VideosModel>(
      create: (_) => VideosModel(),
      child: const _VideoScreen(),
    );
  }
}

class _VideoScreen extends StatefulWidget {
  const _VideoScreen();

  @override
  State<_VideoScreen> createState() => __VideoScreenState();
}

class __VideoScreenState extends State<_VideoScreen> with AppBarMixin {
  final _controller = PreloadPageController();

  bool _listenerNotification(Notification notification) {
    if (notification is ScrollEndNotification) {
      final model = Provider.of<VideosModel>(context, listen: false);

      final isCanLoadmore = model.canLoadmore;
      final isEndList = notification.dragDetails != null &&
          notification.dragDetails!.primaryVelocity != null;
      final hasLoadmoreEvent = isEndList
          ? (notification.dragDetails!.primaryVelocity! < -1000)
          : false;

      if (isCanLoadmore && isEndList && hasLoadmoreEvent) {
        model.loadMoreItem();
      }
    }
    return true;
  }

  void _onFinishVideo(int index) {
    _controller.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }

  void _onDetectToUpdateStatusBar(VisibilityInfo info) {
    if (info.visibleFraction == 1) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        (Provider.of<AppModel>(context, listen: false).darkTheme)
            ? SystemUiOverlayStyle.light.copyWith(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor: Colors.black,
              )
            : SystemUiOverlayStyle.dark.copyWith(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor: Colors.black,
              ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<VideosModel>(context, listen: false).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    // video_player only supports Android and iOS
    if (kIsWeb || isDesktop) {
      return const PlatformError();
    }

    return VisibilityDetector(
      key: const Key('__VideoScreenSta'),
      onVisibilityChanged: _onDetectToUpdateStatusBar,
      child: Consumer<VideosModel>(
        builder: (_, model, __) {
          if (model.state.isLoading && model.videos.isEmpty) {
            return Container(
              color: Colors.black,
              child: Center(
                child: kLoadingWidget(context),
              ),
            );
          }

          return renderScaffold(
            routeName: RouteList.videos,
            child: NotificationListener(
              onNotification: _listenerNotification,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: PreloadPageView.builder(
                          controller: _controller,
                          scrollDirection: Axis.vertical,
                          preloadPagesCount: 4,
                          itemCount: model.videos.length,
                          itemBuilder: (context, index) {
                            return _renderVideoPage(
                                model, index, constraints.maxHeight);
                          },
                        ),
                      ),
                      IgnorePointer(
                        ignoring: true,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: <Color>[
                                  Colors.transparent,
                                  const Color(0xFF000000).withOpacity(0.2),
                                  const Color(0xFF000000).withOpacity(0.3),
                                ],
                                tileMode: TileMode.mirror,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _renderVideoPage(VideosModel model, int index, double maxHeight) {
    final item = model.videos[index];
    var postVideokey = 'SocialVideoWidget[$index]${item.videoUrl}';
    final isActiveLoadMore =
        index == (model.videos.length - offsetWillLoadMore);
    final itemEnd = index == (model.videos.length - 1);

    if (isActiveLoadMore && model.canActiveLoadmoreAuto) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        model.loadMoreItem();
      });
    }

    final showLoadmoreBotton = itemEnd && model.state.isLoading;

    return SizedBox(
      height: maxHeight,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: VideoPage(
                    key: ValueKey(postVideokey),
                    video: item,
                    onFinish: () => _onFinishVideo(index),
                  ),
                ),
                if (showLoadmoreBotton)
                  Positioned.fill(
                    child: Container(
                      color: Colors.black54,
                    ),
                  ),
              ],
            ),
          ),
          if (itemEnd)
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              transitionBuilder: (child, animation) {
                return SizeTransition(sizeFactor: animation, child: child);
              },
              child: !showLoadmoreBotton
                  ? const SizedBox()
                  : Container(
                      color: Colors.black,
                      height: 80,
                      width: double.infinity,
                      child: Center(
                        child: SizedBox(
                          height: 20,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: kLoadingWidget(context),
                          ),
                        ),
                      ),
                    ),
            ),
        ],
      ),
    );
  }
}
