import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import '../../../../common/utils/constant.dart';
import '../../../../common/utils/error/error_response.dart';
import '../../../../domain/usecase/user/login.usecase.dart';
import '../../../../domain/usecase/user/user.usecase.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserUsecase _userUsecase;

  UserBloc(this._userUsecase) : super(UserState()) {
    on<UserLogin>(_onUserLogin);
    on<UserTypeAdmin>(_onAdminType);
    on<UserTypeUser>(_onUserType);
    on<UserLoginWithToken>(_onUserLoginWithToken);
    on<UserLogout>(_onUserLogout);
  }

  // 사용자 로그인 여부 확인
  Future<void> _onUserLogin(UserLogin event, Emitter<UserState> emit,
  ) async {
     try{
       emit(
         state.copyWith(status: Status.loading),
       );

       final User? user = await _userUsecase.execute(usecase: LoginUsecase());

       if (user == null) {
         emit(
           state.copyWith(status: Status.loading),
         );
       } else {
         emit(
           state.copyWith(status: Status.success, user: user),
         );
       }
     }catch(error){

     }
  }

  // 사용자 구분 체크 - 관리자 계정
  Future<void> _onAdminType(
      UserTypeAdmin event,
      Emitter<UserState> emit
      ) async {
      // emit(state.copyWith(status: Status.success));
    try {
      emit(state.copyWith(userType: Usertype.admin));
    } catch (e) {
      print(e);
    }


  }

  // 사용자 구분 체크 - 이용자 계정
  Future<void> _onUserType(
      UserTypeUser event,
      Emitter<UserState> emit
      ) async {
    emit(state.copyWith(status: Status.loading));
    try {
      emit(state.copyWith(userType: Usertype.user));
    } catch (e) {
      print(e);
    }
  }

  // 사용자 카카오 토큰 받기
  Future<void> _onUserLoginWithToken(
    UserLoginWithToken event,
    Emitter<UserState> emit,
  ) async {}


  // 사용자 카카오 로그아웃
  Future<void> _onUserLogout(
    UserLogout event,
    Emitter<UserState> emit,
  ) async {}
}

