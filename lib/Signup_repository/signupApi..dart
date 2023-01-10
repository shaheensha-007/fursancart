import 'dart:convert';


import 'package:fursancart/usermodel.dart';
import 'package:http/http.dart';


import 'api_client.dart';


class SignupApi {


  ApiClient apiClient = ApiClient();
  String trendingpath = '/auth/local/user/sign-up';


  Future<Usermodel> signup(String email, String username,String password) async {
    var boby = {"Email":email, "Username":username,"Password": password};
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', boby);

    return Usermodel.fromJson(jsonDecode(response.body));
  }

}