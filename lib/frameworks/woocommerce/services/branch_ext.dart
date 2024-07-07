import '../../../data/boxes.dart';

extension UriExt on Uri {
  Uri withCurrentBranch() {
    var params = Map<String, String>.from(queryParameters);
    var branch = CacheBox().getCurrentBranchCache();
    if (branch != null) {
      params['branch_id'] = '$branch';
    }
    return replace(queryParameters: params);
  }
}
