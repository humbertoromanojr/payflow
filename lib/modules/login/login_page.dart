import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // get width and hight current screen
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Container(
            width: sizeScreen.width,
            height: sizeScreen.height,
            color: AppColors.primary,
          )
        ],
      ),
    );
  }
}
