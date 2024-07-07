import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_seo/meta_seo.dart';

enum SeoRobotsName {
  /// The robots meta tag lets you utilize a granular,
  /// page-specific approach to controlling how an individual page should
  /// be indexed and served to users in Google Search results.
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  @JsonValue('robots')
  robots,

  /// When users search for your site, Google Search results sometimes
  /// display a search box specific to your site, along with other
  /// direct links to your site. This tag tells Google not
  /// to show the sitelinks search box.
  /// https://developers.google.com/search/docs/crawling-indexing/special-tags
  @JsonValue('google')
  google,

  /// Google's standard web crawler has the user agent name Googlebot
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  @JsonValue('googleBot')
  googleBot,

  /// Search engines may have different crawlers for different purposes.
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  @JsonValue('googleBotNews')
  googleBotNews,

  /// You can use this tag on the top-level page of your site to verify
  /// ownership for Search Console.
  /// https://developers.google.com/search/docs/crawling-indexing/special-tags
  @JsonValue('googleSiteVerification')
  googleSiteVerification;

  RobotsName toConfig() {
    switch (this) {
      case SeoRobotsName.google:
        return RobotsName.google;
      case SeoRobotsName.googleBot:
        return RobotsName.googleBot;
      case SeoRobotsName.googleBotNews:
        return RobotsName.googleBotNews;
      case SeoRobotsName.googleSiteVerification:
        return RobotsName.googleSiteVerification;
      case SeoRobotsName.robots:
        return RobotsName.robots;
    }
  }
}
