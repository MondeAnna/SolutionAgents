import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'service.dart';
import 'register_model.dart';

class apiData extends ChangeNotifier {

  bool loading = false;
  bool isBack = false;

  Future<void> postData(RegisterBody body) async {

    loading = true;
    notifyListeners();
    http.Response response = (await register(body))!;
    
    if (response.statusCode == 200) {
      isBack = true;

    }
    loading = false;
    notifyListeners();
  }
}