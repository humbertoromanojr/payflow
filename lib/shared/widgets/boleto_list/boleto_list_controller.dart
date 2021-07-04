import 'package:payflow/shared/models/boleto_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BoletoListController {
  List<BoletoModel> billets = <BoletoModel>[];

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
