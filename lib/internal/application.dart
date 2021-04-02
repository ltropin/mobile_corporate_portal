import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_corporate_portal/domain/bloc/auth/auth.dart';
import 'package:mobile_corporate_portal/internal/dependecies/main_module.dart';
import 'package:mobile_corporate_portal/internal/di/global.dart';
import 'package:mobile_corporate_portal/internal/di/init.dart';
import 'package:mobile_corporate_portal/presentation/screens/auth/auth.dart';
import 'package:mobile_corporate_portal/presentation/screens/profile/profile.dart';

class Application extends StatelessWidget {
  const Application({Key key}) : super(key: key);
  static bool isDISetuped = false;

  @override
  Widget build(BuildContext context) {
    if (!isDISetuped) {
      setupInitial();
      isDISetuped = true;
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => MainModule.authBloc(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Corporate Portal',
          navigatorKey: GetIt.I<GlobalDI>().navigatorKey,
          debugShowCheckedModeBanner: false,
          initialRoute: AuthScreen.routeName,
          routes: {
            AuthScreen.routeName: (_) => AuthScreen(),
            ProfileScreen.routeName: (_) => ProfileScreen(),
          },
        );
      }),
    );
  }
}
