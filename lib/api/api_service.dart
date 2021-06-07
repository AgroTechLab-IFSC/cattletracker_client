//import 'package:flutter_http_post_request/shared_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/login_model.dart';
import '../model/user_model.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    Uri urlLogin =
        Uri.parse("https://agrotechlab.lages.ifsc.edu.br:8080/api/auth/login");

    final response = await http.post(urlLogin, body: requestModel.toJson());
    return LoginResponseModel.fromJson(
      json.decode(response.body),
    );
  }

  Future<DataModel> getUsers() async {
    Uri urlUsers = Uri.parse("https://reqres.in/api/users?page=2");

    final response = await http.get(urlUsers);
    if (response.statusCode == 200 || response.statusCode == 400) {
      return DataModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
