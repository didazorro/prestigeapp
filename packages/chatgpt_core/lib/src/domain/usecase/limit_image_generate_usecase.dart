import 'package:injectable/injectable.dart';

import 'user_storage_usecase.dart';

const _limitImageGenerate = 3;
const _numberImageGenKey = 'numberImageGenKey';

@injectable
class LimitImageGenerateUsecase {
  final UserStorageUsecase _userStorageUsecase;

  LimitImageGenerateUsecase(this._userStorageUsecase);

  int getTotalTimes() {
    return _userStorageUsecase.getInt(_numberImageGenKey) ?? 0;
  }

  int getLimit() {
    return _limitImageGenerate;
  }

  int getRemain() {
    return _limitImageGenerate - getTotalTimes();
  }

  Future<void> increaseNumberImageGen() async {
    final numberImageGen = getTotalTimes();
    await _userStorageUsecase.setIntData(
      numberImageGen + 1,
      _numberImageGenKey,
    );
  }

  bool isLimit() {
    return getTotalTimes() >= _limitImageGenerate;
  }
}
