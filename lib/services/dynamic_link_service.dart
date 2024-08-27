import 'link_service.dart';

abstract class DynamicLinkService {
  DynamicLinkService({
    required this.linkService,
  });

  final LinkService linkService;

  Future<void> initialize();

  Future<String?> createDynamicLink({required String productUrl});
}
