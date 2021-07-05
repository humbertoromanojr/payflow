import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_info/boleto_info_widget.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class MyBilletsPage extends StatefulWidget {
  const MyBilletsPage({Key? key}) : super(key: key);

  @override
  _MyBilletsPageState createState() => _MyBilletsPageState();
}

class _MyBilletsPageState extends State<MyBilletsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 40, 
              width: double.maxFinite,
              color: AppColors.primary,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: BoletoInfoWidget(size: 14),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                "My Billets", 
                style: TextStyles.titleBoldHeading
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BoletoListWidget(),
        )
      ],
    );
  }
}
