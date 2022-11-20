import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happiness_client/datasource/remote/common_dio.dart';
import 'package:happiness_client/datasource/local/auth_preference.dart';
import 'package:happiness_client/datasource/local/device_preference.dart';
import 'package:happiness_client/datasource/remote/retrofit/signup_client.dart';
import 'package:happiness_client/datasource/remote/retrofit/spending_client.dart';
import 'package:happiness_client/happiness_config.dart';
import 'package:happiness_client/happiness_route.dart';
import 'package:happiness_client/repository/auth_repository.dart';
import 'package:happiness_client/repository/spending_repository.dart';
import 'package:happiness_client/screen/home/home_screen.dart';
import 'package:happiness_client/screen/login_screen.dart';
import 'package:happiness_client/splash/splash_screen.dart';

class HappinessApp extends StatelessWidget {
  const HappinessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            signupClient: SignupClient(CommonDio.getInstance()),
            devicePreference: DevicePreference(sp: HappinessConfig.sp),
            authPreference: AuthPreference(sp: HappinessConfig.sp),
          ),
        ),
        RepositoryProvider<SpendingRepository>(
          create: (context) => SpendingRepositoryImpl(
            spendingClient: SpendingClient(CommonDio.getInstance()),
          ),
        )
      ],
      child: CupertinoApp(
        home: LoginScreen(),
        onGenerateRoute: HappinessRoute.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
