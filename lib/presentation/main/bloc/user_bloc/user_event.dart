part of 'user_bloc.dart';

abstract class UserEvent {
  const UserEvent();
}

class UserLogin extends UserEvent {}

class UserTypeAdmin extends UserEvent {}

class UserTypeUser extends UserEvent {}

class UserLogout extends UserEvent {}

class UserLoginWithToken extends UserEvent {}
