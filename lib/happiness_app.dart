import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happiness_client/api/common_dio.dart';
import 'package:happiness_client/datasource/local/device_preference.dart';
import 'package:happiness_client/datasource/remote/retrofit/signup_client.dart';
import 'package:happiness_client/happiness_config.dart';
import 'package:happiness_client/happiness_route.dart';
import 'package:happiness_client/repository/auth_repository.dart';
import 'package:happiness_client/screen/login_screen.dart';

class HappinessApp extends StatelessWidget {
  const HappinessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
            create: (context) => AuthRepositoryImpl(
                signupClient: SignupClient(CommonDio.getInstance()),
                devicePreference: DevicePreference(sp: HappinessConfig.sp))),
      ],
      child: const CupertinoApp(
        home: LoginScreen(),
        onGenerateRoute: HappinessRoute.onGenerateRoute,
        initialRoute: LoginScreen.routeName,
      ),
    );
  }
}
