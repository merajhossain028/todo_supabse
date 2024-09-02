import 'package:flutter/material.dart';
import 'package:todo_supabse/core/service/authentication.service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<String?> signup({
    required String email,
    required String password,
  }) async {
    try{
      String? response = await _authenticationService.signup(
        email: email,
        password: password,
      );
      return response;
    }catch(e){
      debugPrint("Error: $e");
    }
    return null;
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try{
      String? response = await _authenticationService.login(
        email: email,
        password: password,
      );
      return response;
    }catch(e){
      debugPrint("Error: $e");
    }
    return null;
  }
}