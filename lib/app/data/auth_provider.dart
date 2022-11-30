import 'dart:convert';

import 'package:get/get.dart';
import 'package:pickles_rapyd/app/models/UserModel.dart';

class AuthProvider extends GetConnect {
  Future<Response> registerUser(UserModel userData) async {
    print("user data " + userData.toJson().toString());
    final body = json.encode(userData);
    print(body);

    var res = await post("http://10.0.2.2:3000/recycler/create-user", body);
    print(res.statusCode);
    print(res.statusText);
    print(res.bodyString);
    print(res.request);
    return res;
  }
}