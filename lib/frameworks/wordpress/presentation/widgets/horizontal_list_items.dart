import 'package:async/async.dart';
import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../../../common/constants.dart';
import '../../../../models/index.dart';
import '../../../../modules/dynamic_layout/config/blog_config.dart';
import '../../../../modules/dynamic_layout/helper/header_view.dart';
import '../../../../modules/dynamic_layout/helper/helper.dart';
import '../../../../routes/flux_navigate.dart';
import '../../../../services/index.dart';
import '../../../../widgets/blog/blog_action_button_mixin.dart';
import '../../../../widgets/blog/blog_heart_button.dart';
import '../../../../widgets/common/auto_silde_show.dart';
import '../../../../widgets/common/background_color_widget.dart';
import '../../../../widgets/common/index.dart' show FluxImage;

class LargeCardHorizontalListItems extends StatefulWidget {
  final BlogConfig config;

  const LargeCardHorizontalListItems({required this.config, super.key});

  @override
  State<LargeCardHorizontalListItems> createState() =>
      _LargeCardHorizontalListItemsState();
}

class _LargeCardHorizontalListItemsState
    extends State<LargeCardHorizontalListItems> with BlogActionButtonMixin {
  final Services _service = Services();

  late Future<List<Blog>?> _getBlogsLayout;

  final _memoizer = AsyncMemoizer<List<Blog>?>();

  final blogEmptyList = const [Blog.empty(1), Blog.empty(2), Blog.empty(3)];

  bool get isDesktopDisplay => Layout.isDisplayDesktop(context);

  final ScrollController scrollController = ScrollController();

  Map get configJson => widget.config.toJson();

  @override
  void initState() {
    /// only create the future once
    _getBlogsLayout = getBlogLayout(context);
    super.initState();
  }

  Future<List<Blog>?> getBlogLayout(context) async {
    return _memoizer.runOnce(() {
      return _service.api.fetchBlogLayout(config: configJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    final config = widget.config;
    final isRecent = config.layout == 'recentView' ? true : false;
    final enableBackground = true == config.enableBackground;
    final imageBorder = config.imageBorder;
    final columns = isDesktopDisplay ? 3 : 2;

    return BackgroundColorWidget(
      enable: enableBackground,
      child: LayoutBuilder(builder: (context, constraints) {
        var imageWidth = (config.imageWidth ?? constraints.maxWidth) / columns;
        return FutureBuilder<List<Blog>?>(
          future: _getBlogsLayout,
          builder: (BuildContext context, AsyncSnapshot<List<Blog>?> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 10.0, top: 10.0),
                  child: Column(
                    children: <Widget>[
                      HeaderView(
                        headerText: config.name ?? ' ',
                        showSeeAll: isRecent ? false : true,
                        callback: () => FluxNavigate.pushNamed(
                          RouteList.backdrop,
                          arguments: BackDropArguments(
                            config: configJson,
                            data: snapshot.data,
                          ),
                          context: context,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: scrollController,
                        child: Row(
                          children: [
                            for (var i = 0; i < 3; i++)
                              _LargeBlogCard(
                                blogs: blogEmptyList,
                                index: i,
                                width: imageWidth,
                                imageBorder: imageBorder,
                                onTap: () {},
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              case ConnectionState.done:
              default:
                {
                  var body = snapshot.hasError
                      ? const SizedBox(height: 200)
                      : SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          controller: scrollController,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(
                              snapshot.data?.length ?? 0,
                              (index) {
                                return _LargeBlogCard(
                                  blogs: snapshot.data ?? [],
                                  index: index,
                                  width: imageWidth,
                                  imageBorder: imageBorder,
                                  context: context,
                                  onTap: () {
                                    final data = snapshot.data ?? [];
                                    onTapBlog(
                                      blog: data[index],
                                      blogs: data,
                                      context: context,
                                    );
                                  },
                                  //isHero: true,
                                );
                              },
                            ),
                          ),
                        );

                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: <Widget>[
                        HeaderView(
                          headerText: config.name ?? ' ',
                          showSeeAll: isRecent ? false : true,
                          callback: () => FluxNavigate.pushNamed(
                            RouteList.backdrop,
                            arguments: BackDropArguments(
                              config: configJson,
                              data: snapshot.data,
                            ),
                            context: context,
                          ),
                        ),
                        HandleAutoSlide.list(
                          enable: config.enableAutoSliding == true,
                          durationAutoSliding: config.durationAutoSliding,
                          numberOfItems: snapshot.data?.length ?? 0,
                          controller: scrollController,
                          child: body,
                        ),
                      ],
                    ),
                  );
                }
            }
          },
        );
      }),
    );
  }
}

class _LargeBlogCard extends StatelessWidget {
  final List<Blog> blogs;
  final int index;
  final double? width;
  final double? imageBorder;
  final context;
  final onTap;

  const _LargeBlogCard({
    required this.blogs,
    required this.index,
    required this.width,
    required this.imageBorder,
    this.context,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var imageWidth = width;
    var titleFontSize = imageWidth! / 10;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: 'blog-${blogs[index].id}',
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(imageBorder!),
                ),
                child: FluxImage(
                  imageUrl: blogs[index].imageFeature,
                  width: imageWidth,
                  height: imageWidth * 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: imageWidth,
              height: imageWidth * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(imageBorder!)),
                gradient: const LinearGradient(
                    colors: [Colors.black54, Colors.black26, Colors.black12],
                    stops: [0.4, 0.7, 0.9],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center),
              ),
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  width: imageWidth - 30,
                  height: imageWidth * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        blogs[index].title,
                        style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.w800,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: imageWidth / 35,
                      ),
                      Text(
                        blogs[index].date == ''
                            ? 'Loading ...'
                            : blogs[index].date,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: titleFontSize - 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            kBlogDetail['showHeart']
                ? Positioned(
                    top: 0,
                    right: 0,
                    child: BlogHeartButton(
                      blog: blogs[index],
                      size: 23,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
