import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:nisanaesan/core/utils/exception/common_exception.dart';
import 'package:nisanaesan/core/utils/logger.dart';
import 'package:nisanaesan/domain/repository/user.repository.dart';
import 'package:nisanaesan/domain/usecase/base/remote.usecase.dart';

class LogoutUsecase extends RemoteUsecase<UserRepository>{


  @override
  Future<void> call(UserRepository repository) async{

    try{
      await UserApi.instance.logout();
    }catch(error){
      CustomLogger.logger.e('${error.toString()}');
      throw CommonException.setError(error);
    }


  }

}