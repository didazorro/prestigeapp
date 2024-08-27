class JustUrl {
  final String url;

  JustUrl({required this.url});

  factory JustUrl.fromJson(Map<String, dynamic> json) {
    return JustUrl(url: json['url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
    };
  }
}
