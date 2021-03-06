import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InsertBoletoController {
  final formKey = GlobalKey<FormState>();
  BoletoModel model = BoletoModel();

  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "The name cannot be empty" : null;
  String? validateVencimento(String? value) =>
      value?.isEmpty ?? true ? "The expiration date cannot be empty." : null;
  String? validateValor(double value) =>
      value == 0 ? "Enter a value greater than R\$ 0,00" : null;
  String? validateCodigo(String? value) =>
      value?.isEmpty ?? true ? "Billet code cannot be empty" : null;

  void onChange({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
  }) {
    model = model.copyWith(
      name: name,
      dueDate: dueDate,
      value: value,
      barcode: barcode,
    );
  }

  Future<void> saveBillet() async {
    final instance = await SharedPreferences.getInstance();
    final billets = instance.getStringList("billets") ?? <String>[];
    billets.add(model.toJson());
    await instance.setStringList("billets", billets);
    return;
  }

  // register
  Future<void> regiterBillet() async {
    final form = formKey.currentState;

    if (form!.validate()) {
      return saveBillet();
    }
  }
}
