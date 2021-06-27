import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Scan the barcode of billet.",
          style: TextStyles.buttonBackground,
        ),
        leading: BackButton(
          color: AppColors.background,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.black,)),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              )
            ),
          Expanded(child: Container(color: Colors.black,)),
          ],
        ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: "Insert code from billet", 
              onPressed: () {}
            ),
          ),
          Expanded(
            child: LabelButton(
              label: "Insert code billet from gallery", 
              onPressed: () {}
            ),
          ),
        ],
      )
    );
  }
}
