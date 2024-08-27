import 'package:flutter/material.dart';
import 'package:inspireui/widgets/circle_button_text.dart';
import 'package:intro_slider/intro_slider.dart';

import '../../../../common/config/models/onboarding_config.dart';
import '../../../../common/config/models/onboarding_item_config.dart';
import '../../../../common/constants.dart';
import '../../../../common/tools/image_tools.dart';
import '../../../../generated/l10n.dart';
import '../../../../widgets/onboarding/multi_language_text_button.dart';
import '../../../home/change_language_mixin.dart';
import '../../onboarding_mixin.dart';

class OnBoardingV3 extends StatefulWidget {
  final OnBoardingConfig config;
  const OnBoardingV3({
    super.key,
    required this.config,
  });

  @override
  State<OnBoardingV3> createState() => _OnBoardingV3State();
}

class _OnBoardingV3State extends State<OnBoardingV3>
    with ChangeLanguage, OnBoardingMixin {
  @override
  void initState() {
    super.initState();
    ImageTools.preLoadingListImagesInitState(
        widget.config.items.map((e) => e.image).toList(), context);
  }

  List<ContentConfig> getSlides(List<OnBoardingItemConfig> data) {
    final slides = <ContentConfig>[];
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final size = MediaQuery.sizeOf(context);

    for (var i = 0; i < data.length; i++) {
      final isNetworkImage =
          data[i].image.contains('http') || data[i].image.contains('https');

      var slide = ContentConfig(
        title: data[i].title,
        maxLineTitle: 2,
        styleTitle: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          shadows: [
            Shadow(
              offset: const Offset(3.0, 3.0),
              blurRadius: 7.0,
              color: isDarkTheme ? Colors.black : Colors.white,
            ),
            Shadow(
              color: isDarkTheme ? Colors.black : Colors.white,
              blurRadius: 15.0,
            ),
          ],
        ),
        marginTitle: EdgeInsets.only(top: size.height * 0.7),
        description: data[i].desc,
        maxLineTextDescription: 2,
        styleDescription: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 15.0,
          shadows: [
            Shadow(
              offset: const Offset(3.0, 3.0),
              blurRadius: 7.0,
              color: isDarkTheme ? Colors.black : Colors.white,
            ),
            Shadow(
              color: isDarkTheme ? Colors.black : Colors.white,
              blurRadius: 15.0,
            ),
          ],
        ),
        marginDescription: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        foregroundImageFit: BoxFit.fitWidth,
        backgroundBlendMode: BlendMode.difference,
        backgroundImage: isNetworkImage ? null : data[i].image,
        backgroundNetworkImage: isNetworkImage ? data[i].image : null,
      );
      slides.add(slide);
    }
    return slides;
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.config.items;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          IntroSlider(
            listContentConfig: getSlides(data),
            renderSkipBtn: CircleButtonText(
              S.of(context).skip,
              color: Theme.of(context).primaryColor,
              radius: 16,
            ),
            renderDoneBtn: _renderIconButton(context, Icons.done),
            renderPrevBtn:
                MultiLanguageTextButton(getText: () => S.of(context).prev),
            renderNextBtn: _renderIconButton(context, Icons.arrow_forward),
            onDonePress: onTapDone,
          ),
          if (widget.config.showLanguage) iconLanguage(),
        ],
      ),
    );
  }

  Widget _renderIconButton(BuildContext context, IconData icon) {
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor,
        ),
        child: Icon(
          icon,
          color: Theme.of(context).primaryColor.getColorBasedOnBackground,
        ));
  }
}
