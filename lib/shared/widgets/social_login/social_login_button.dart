import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      
      child: Row(
        children: [
          Expanded(child: Image.asset(AppImages.google)),
          Expanded(
            child: Text(
              "Enter with google", 
              style: TextStyles.buttonGray
            ),
          )
        ],
      ),
    );
  }
}