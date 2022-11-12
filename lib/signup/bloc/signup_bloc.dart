import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:happiness_client/signup/signup_command.dart';
import 'package:happiness_client/signup/signup_provider.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:meta/meta.dart';

import '../../repository/auth_repository.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepository authRepository;

  SignupBloc({required this.authRepository}) : super(SignupInitial()) {
    on<SignupRequested>(_onSignupRequested);
  }

  FutureOr<void> _onSignupRequested(SignupRequested event, Emitter<SignupState> emit) async {
    late final SignupCommand command;
    emit(SignupLoading());

    switch (event.signupProvider) {
      case SignupProvider.KAKAO:
        final user = await _kakaoUser();
        command = SignupCommand(
            signupProvider: event.signupProvider,
            providerId: user.id.toString(),
            email: user.kakaoAccount!.email!,
            emailVerified: user.kakaoAccount!.isEmailVerified!);
        break;
      case SignupProvider.GOOGLE:
        final user = await GoogleSignIn(scopes: ['email', 'profile']).signIn();
        command = SignupCommand(
          signupProvider: SignupProvider.GOOGLE,
          email: user!.email,
          providerId: user.id,
          emailVerified: true,
        );
        break;
      case SignupProvider.APPLE:
        break;
      case SignupProvider.NAVER:
        break;
    }
    authRepository.signup(command);
  }
}

Future<User> _kakaoUser() async {
  if (await isKakaoTalkInstalled()) {
    await UserApi.instance.loginWithKakaoTalk(serviceTerms: ['email']);
  } else {
    await UserApi.instance.loginWithKakaoAccount(serviceTerms: ['email']);
  }
  final user = await UserApi.instance.me();
  if (user.kakaoAccount!.emailNeedsAgreement == true) {
    await UserApi.instance.loginWithNewScopes(['account_email']);
  }
  return user;
}

extension on OAuthToken {}
