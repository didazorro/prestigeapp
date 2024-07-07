import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../modules/meta_seo/meta_seo_service.dart';
import 'seo_meta_keyvalue.dart';
import 'seo_meta_name_content.dart';
import 'seo_meta_property_content.dart';
import 'seo_meta_robot.dart';
import 'seo_meta_twitter.dart';

part 'seo_config.freezed.dart';
part 'seo_config.g.dart';

@freezed
class SeoConfig with _$SeoConfig {
  const SeoConfig._();

  @JsonSerializable(explicitToJson: true)
  const factory SeoConfig({
    SeoMetaRobot? metaRobot,
    SeoMetaKeyValue? metaKeyValue,
    SeoMetaNameContent? metaNameContent,
    SeoMetaPropertyContent? metaPropertyContent,
    SeoMetaTwitter? metaTwitter,
    String? author,
    String? description,
    List<String>? keywords,
    String? viewport,
    String? httpEquiv,
    String? facebookAppID,
    String? ogTitle,
    String? ogDescription,
    String? ogImage,
  }) = _SeoConfig;

  factory SeoConfig.fromJson(Map<String, dynamic> json) =>
      _$SeoConfigFromJson(json);
}

extension SeoConfigMetaExt on SeoConfig {
  void addMeta(MetaSeoService service) {
    final seoConfig = this;
    final meta = service.meta;

    if (seoConfig.author?.isNotEmpty ?? false) {
      meta.author(author: seoConfig.author!);
    }
    if (seoConfig.description?.isNotEmpty ?? false) {
      meta.description(description: seoConfig.description!);
    }
    if (seoConfig.keywords?.isNotEmpty ?? false) {
      final listKey = seoConfig.keywords!.join(', ');
      meta.keywords(keywords: listKey);
    }
    if (seoConfig.viewport?.isNotEmpty ?? false) {
      meta.viewport(viewport: seoConfig.viewport!);
    }
    if (seoConfig.httpEquiv?.isNotEmpty ?? false) {
      meta.httpEquiv(httpEquiv: seoConfig.httpEquiv!);
    }
    if (seoConfig.facebookAppID?.isNotEmpty ?? false) {
      meta.facebookAppID(facebookAppID: seoConfig.facebookAppID!);
    }
    if (seoConfig.ogTitle?.isNotEmpty ?? false) {
      meta.ogTitle(ogTitle: seoConfig.ogTitle!);
    }
    if (seoConfig.ogDescription?.isNotEmpty ?? false) {
      meta.ogDescription(ogDescription: seoConfig.ogDescription!);
    }
    if (seoConfig.ogImage?.isNotEmpty ?? false) {
      meta.ogImage(ogImage: seoConfig.ogImage!);
    }

    if (seoConfig.metaTwitter != null) {
      meta.twitterCard(twitterCard: seoConfig.metaTwitter!.card.toConfig());
      meta.twitterDescription(
          twitterDescription: seoConfig.metaTwitter!.description);
      meta.twitterImage(twitterImage: seoConfig.metaTwitter!.image);
      meta.twitterTitle(twitterTitle: seoConfig.metaTwitter!.title);
    }
    if (seoConfig.metaRobot != null) {
      meta.robots(
        robotsName: seoConfig.metaRobot!.name.toConfig(),
        content: seoConfig.metaRobot!.content,
      );
    }

    if (seoConfig.metaKeyValue != null) {
      meta.keyValue(
        key: seoConfig.metaKeyValue!.key,
        value: seoConfig.metaKeyValue!.value,
      );
    }

    if (seoConfig.metaPropertyContent != null) {
      meta.propertyContent(
        property: seoConfig.metaPropertyContent!.property,
        content: seoConfig.metaPropertyContent!.content,
      );
    }

    if (seoConfig.metaNameContent != null) {
      meta.nameContent(
        name: seoConfig.metaNameContent!.name,
        content: seoConfig.metaNameContent!.content,
      );
    }
  }
}
