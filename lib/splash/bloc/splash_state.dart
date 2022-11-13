part of 'splash_bloc.dart';

@immutable
abstract class SplashState {}

class SplashInitial extends SplashState {}

class SplashNeedLogin extends SplashState {}

class SplashLoginSuccess extends SplashState {}
