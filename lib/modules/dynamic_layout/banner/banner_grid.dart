import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../widgets/common/flux_image.dart';
import '../config/banner_grid_config.dart';
import '../helper/helper.dart';

class BannerGrid extends StatefulWidget {
  const BannerGrid({
    super.key,
    required this.config,
  });

  final BannerGridConfig config;

  @override
  State<BannerGrid> createState() => _BannerGridState();
}

class _BannerGridState extends State<BannerGrid> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final categModel = context.read<CategoryModel>();

      if (widget.config.isCategory &&
          (categModel.categories?.isEmpty ?? true)) {
        final appModel = Provider.of<AppModel>(context, listen: false);

        context
            .read<CategoryModel>()
            .getCategories(
              lang: appModel.langCode,
              sortingList: appModel.categories,
              categoryLayout: appModel.categoryLayout,
              remapCategories: appModel.remapCategories,
            )
            .then((value) => setState(() {}));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isDesktop = Layout.isDisplayDesktop(context);
    if (isDesktop) {
      return GestureDetector(
        onTap: () {
          widget.config.run(context);
        },
        behavior: HitTestBehavior.translucent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 800),
            child: SizedBox(
              height: size.width * 0.7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.config.borderRadius)),
                      child: FluxImage(
                        imageUrl: widget.config.startImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                                Radius.circular(widget.config.borderRadius)),
                            child: FluxImage(
                              imageUrl: widget.config.centerTopImage,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                                Radius.circular(widget.config.borderRadius)),
                            child: FluxImage(
                              imageUrl: widget.config.centerImage,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                                Radius.circular(widget.config.borderRadius)),
                            child: FluxImage(
                              imageUrl: widget.config.centerBottomImage,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.config.borderRadius)),
                      child: FluxImage(
                        imageUrl: widget.config.endImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    final height = size.height * 0.25;
    final width = size.width;

    return GestureDetector(
      onTap: () {
        widget.config.run(context);
      },
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (widget.config.startImage.isNotEmpty) ...[
              SizedBox(
                height: height,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                      Radius.circular(widget.config.borderRadius)),
                  child: FluxImage(
                    imageUrl: widget.config.startImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
            SizedBox(
              height: height,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.config.borderRadius)),
                      child: FluxImage(
                        imageUrl: widget.config.centerTopImage,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.config.borderRadius)),
                      child: FluxImage(
                        imageUrl: widget.config.centerImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.config.borderRadius)),
                      child: FluxImage(
                        imageUrl: widget.config.centerBottomImage,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (widget.config.endImage.isNotEmpty) ...[
              const SizedBox(height: 24),
              SizedBox(
                height: height,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                      Radius.circular(widget.config.borderRadius)),
                  child: FluxImage(
                    imageUrl: widget.config.endImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
