import 'package:flutter/material.dart';
import 'themes/app_colors.dart';
import 'views/login/login_view.dart';
import 'views/main/main_view.dart';
import 'views/splash/splash_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Listbook',
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primary,
        backgroundColor: AppColors.background,
      ),
      // home: LoginPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashView(),
        "/main": (context) => const MainView(),
        "/login": (context) => const LoginView(),
      },
    );
  }
}
