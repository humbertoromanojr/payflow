import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/input_text/input_text_widget.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class InsertBoletoPage extends StatefulWidget {
  final String? barcode;

  const InsertBoletoPage({
    Key? key,
    this.barcode,
  }) : super(key: key);

  @override
  _InsertBoletoPageState createState() => _InsertBoletoPageState();
}

class _InsertBoletoPageState extends State<InsertBoletoPage> {
  final moneyInputTextController = MoneyMaskedTextController(
    leftSymbol: "R\$",
    decimalSeparator: ",",
  );
  final duedateInputTextController = MaskedTextController(mask: "00/00/0000");
  final barcodeInputTextController = TextEditingController();

  @override
    void initState() {
      if(widget.barcode != null){
        barcodeInputTextController.text = widget.barcode!; 
      }
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: BackButton(color: AppColors.input),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 93, vertical: 24),
              child: Text(
                "Fill in the payment slip data",
                style: TextStyles.titleBoldHeading,
                textAlign: TextAlign.center,
              ),
            ),
            InputTextWidget(
              label: "Name to billet",
              icon: Icons.description_outlined,
              onChanged: (value) {},
            ),
            InputTextWidget(
              controller: duedateInputTextController,
              label: "Duedate",
              icon: FontAwesomeIcons.timesCircle,
              onChanged: (value) {},
            ),
            InputTextWidget(
              controller: moneyInputTextController,
              label: "Value",
              icon: FontAwesomeIcons.wallet,
              onChanged: (value) {},
            ),
            InputTextWidget(
              controller: barcodeInputTextController,
              label: "Code",
              icon: FontAwesomeIcons.barcode,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: SetLabelButtons(
        enableSecondaryColor: true,
        primaryLabel: "Cancel",
        primaryOnPressed: () {
          Navigator.pop(context);
        },
        secondaryLabel: "Register",
        secondaryOnPressed: () {},
      ),
    );
  }
}
