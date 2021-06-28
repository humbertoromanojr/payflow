import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            icon: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Icon(Icons.hardware),
                ),
                Container(
                  width: 1, height: 48,
                  color: AppColors.stroke,
                )
              ],
            ),
            border: InputBorder.none,
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: AppColors.stroke,
        ),
      ],
    );
  }
}
