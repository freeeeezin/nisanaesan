import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:nisanaesan/core/utils/exception/common_exception.dart';
import 'package:nisanaesan/core/utils/logger.dart';
import 'package:nisanaesan/domain/repository/user.repository.dart';
import 'package:nisanaesan/domain/usecase/base/remote.usecase.dart';

class LoginWithTokenUsecase extends RemoteUsecase<UserRepository> {


  @override
  Future<User?> call(UserRepository repository) async{

    if(await  AuthApi.instance.hasToken()){
      try{
        await UserApi.instance.accessTokenInfo();
      }catch(error){
        CustomLogger.logger.e('${error.toString()}');
        throw CommonException.setError(error);
      }
    }else{
      return null;
    }

    return await UserApi.instance.me();
  }
}