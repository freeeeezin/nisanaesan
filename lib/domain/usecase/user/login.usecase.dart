import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:nisanaesan/common//utils/logger.dart';
import 'package:nisanaesan/domain/repository/user.repository.dart';
import 'package:nisanaesan/domain/usecase/base/remote.usecase.dart';

import '../../../common//utils/exception/common_exception.dart';

class LoginUsecase extends RemoteUsecase<UserRepository> {
  @override
  Future<User?> call(UserRepository repository) async {

    // kakao 앱 설치여부 확인.
    if (await isKakaoTalkInstalled()) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
      } catch (error) {
        if (error is KakaoAuthException &&
            (error.message?.contains('Cancelled') ?? false)) {
          return null;
        }

        await _loginWithKakaoAccount();
      }
    } else {
      await _loginWithKakaoAccount();
    }

    return UserApi.instance.me();
  }

  Future<void> _loginWithKakaoAccount() async {
    try {
      await UserApi.instance.loginWithKakaoAccount();
    } catch (error) {
      if (error is PlatformException && error.code == 'CANCELLED') {
        return null;
      }

      CustomLogger.logger.e('${error.toString()}');
      throw CommonException.setError(error);
    }
  }
}
