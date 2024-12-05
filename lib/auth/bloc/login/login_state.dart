part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final AuthResponseModel authResponseModel;
  LoginSuccess({required this.authResponseModel});
}

class LoginFailure extends LoginState {
  final String message;
  LoginFailure({required this.message});
}
