import 'package:flutter/material.dart';
import 'package:listbook/themes/app_text_style.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Listbook', style: TextStyles.logotype),
    );
  }
}
