part of 'signup_bloc.dart';

abstract class SignupEvent {}

class RequestSignup extends SignupEvent {
  final SignupProvider signupProvider;

  RequestSignup({required this.signupProvider});
}
