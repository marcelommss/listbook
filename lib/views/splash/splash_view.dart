import 'package:flutter/material.dart';
import 'package:listbook/themes/app_colors.dart';
import 'package:listbook/widgets/logo/logo_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    new Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushNamed(context, '/login');
    });
    return Material(
        color: Color(0xFF0290F4),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color(0xFF0290F4).withOpacity(0.1),
                Color(0xFF007BF5).withOpacity(1),
              ],
            ),
          ),
          child: GestureDetector(
            child: LogoWidget(),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ));
  }
}
