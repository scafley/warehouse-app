part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccess extends AuthState {
  final String email;
  final String name;

  AuthSuccess({required this.email, required this.name});
}

final class AuthLoading extends AuthState {}

final class AuthFailure extends AuthState {
  final String msg;
  AuthFailure(this.msg);
}
