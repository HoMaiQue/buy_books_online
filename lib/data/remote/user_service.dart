import 'package:buy_books_online/network/api_client.dart';
import 'package:dio/dio.dart';

class UserService {
  Future<Response> SignIn(String phone, String password) {
    return ApiClient.instance.dio
        .post("/user/sign-in", data: {"Phone": phone, "password": password});
  }
}
