import '../../../../generated/l10n.dart';

enum ImageViewType {
  page,
  grid;

  String get displayValue {
    switch (this) {
      case ImageViewType.page:
        return S.current.page_openai;
      case ImageViewType.grid:
        return S.current.grid_openai;
    }
  }

  bool get isPage => this == ImageViewType.page;
}
