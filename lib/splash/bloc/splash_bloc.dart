import 'package:bloc/bloc.dart';
import 'package:happiness_client/repository/auth_repository.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthRepository authRepository;

  SplashBloc({required this.authRepository}) : super(SplashInitial()) {
    on<SplashCheckToken>(_onCheckToken);
  }

  void _onCheckToken(SplashEvent event, Emitter<SplashState> emit) {
    if (authRepository.hasToken()) {
      return emit(SplashLoginSuccess());
    }

    emit(SplashNeedLogin());
  }
}
