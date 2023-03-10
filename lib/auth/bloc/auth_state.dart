part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class Loading extends AuthState {}

class Authenticated extends AuthState {
  final firebase_auth.User firebaseUser;

  const Authenticated(this.firebaseUser);

  @override
  List<Object> get props => [firebaseUser];
}

class UnAuthenticated extends AuthState {}

class AuthError extends AuthState {
  final String error;

  const AuthError(this.error);

  @override
  List<Object> get props => [error];
}
