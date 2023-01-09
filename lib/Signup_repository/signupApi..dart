import 'dart:convert';


import 'package:fursancart/usermodel.dart';
import 'package:http/http.dart';


import 'api_client.dart';


class SignupApi {


  ApiClient apiClient = ApiClient();
  String trendingpath = '/auth/local/user/sign-up';


  Future<Usermodel> signup() async {
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', null);

    return Usermodel.fromJson(jsonDecode(response.body));
  }

}