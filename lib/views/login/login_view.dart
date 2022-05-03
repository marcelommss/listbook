import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listbook/themes/app_colors.dart';
import 'package:listbook/widgets/logo/logo_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/main');
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
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.3,
                child: null,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
