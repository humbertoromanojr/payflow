import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class InsertBoletoPage extends StatelessWidget {
  const InsertBoletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Insert Boleto Page"),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
    );
  }
}
