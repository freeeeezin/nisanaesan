import 'package:nisanaesan/domain/repository/repository.dart';
import 'package:nisanaesan/domain/usecase/base/usecase.dart';

abstract class RemoteUsecase<T extends Repository> extends Usecase<T>{}