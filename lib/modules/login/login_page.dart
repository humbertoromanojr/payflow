import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';

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
      body: Container(
        width: sizeScreen.width,
        height: sizeScreen.height,
        child: Stack(
          children: [
            Container(
              width: sizeScreen.width,
              height: sizeScreen.height * 0.4,
              color: AppColors.primary,
            ),
            Positioned(top: 40, left: 0, right: 0, child: Image.asset(AppImages.person, width: 208, height: 373)),
            Positioned(
              bottom: sizeScreen.height * 0.27,
              left: 0, right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
