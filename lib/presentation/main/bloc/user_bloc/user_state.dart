part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    @Default(Status.initial) Status status,
    @Default(ErrorResponse()) ErrorResponse error,
    @Default(Usertype.none) Usertype userType,
    User? user,
  }) = _UserState;



}
