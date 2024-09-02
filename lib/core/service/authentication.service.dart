import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:todo_supabse/app/credebtials/supabase.credentials.dart';

class AuthenticationService {
  Future<String?> signup({
    required String email,
    required String password,
  }) async {
    AuthResponse response = await SupabaseCredentials.supabaseClient.auth.signUp(
      email: email,
      password: password,
    );

    if (response.user != null) {
      String userEmail = response.user!.email!;
      debugPrint("User $userEmail has been created");
    }
    else{
      debugPrint("User creation failed");
    }
    return null;
  }

    Future<String?> login({
    required String email,
    required String password,
  }) async {
    AuthResponse response = await SupabaseCredentials.supabaseClient.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.user != null) {
      String userEmail = response.user!.email!;
      debugPrint("User $userEmail has been logged in");
    }
    else{
      debugPrint("User login failed");
    }
    return null;
  }
}
