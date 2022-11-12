part of 'signup_bloc.dart';

abstract class SignupEvent {}

class SignupRequested extends SignupEvent {
  final SignupProvider signupProvider;

  SignupRequested({required this.signupProvider});
}
