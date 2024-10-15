// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nisanaesan/data/repository_impl/user.repository_impl.dart'
    as _i338;
import 'package:nisanaesan/domain/repository/user.repository.dart' as _i883;
import 'package:nisanaesan/domain/usecase/user/user.usecase.dart' as _i518;
import 'package:nisanaesan/presentation/main/bloc/user_bloc/user_bloc.dart'
    as _i37;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i883.UserRepository>(() => _i338.UserRepositoryImpl());
    gh.singleton<_i518.UserUsecase>(
        () => _i518.UserUsecase(gh<_i883.UserRepository>()));
    gh.factory<_i37.UserBloc>(() => _i37.UserBloc(gh<_i518.UserUsecase>()));
    return this;
  }
}
