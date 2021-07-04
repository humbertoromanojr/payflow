import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BoletoListController {
  final boletosNotifier = ValueNotifier<List<BoletoModel>>(<BoletoModel>[]);
  List<BoletoModel> get billets => boletosNotifier.value;
  set billets(List<BoletoModel> value) => boletosNotifier.value = value;

  BoletoListController() {
    getBillets();
  }

  Future<void> getBillets() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getStringList("billets") ?? <String>[];
      billets = response.map((e) => BoletoModel.fromJson(e)).toList();
    } catch (e) {
      billets = <BoletoModel>[];
    }
  }
}
