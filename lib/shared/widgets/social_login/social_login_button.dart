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
      decoration: BoxDecoration(
        color: AppColors.shape,
        borderRadius: BorderRadius.circular(5),
        border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))
        ),
      child: Row(
        children: [
          Expanded(flex: 1, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.google),
              SizedBox(width: 16,),
              Container(height: 56, width: 1, color: AppColors.stroke)
            ],
          )),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter with google", 
                  style: TextStyles.buttonGray
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}