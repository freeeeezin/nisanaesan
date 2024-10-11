import 'package:nisanaesan/domain/repository/user.repository.dart';
import 'package:nisanaesan/domain/usecase/base/remote.usecase.dart';

class UserUsecase {

  final UserRepository _userRepository;

  UserUsecase(this._userRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_userRepository);
  }

}