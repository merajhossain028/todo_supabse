import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  // API Key for Supabase
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB0bGx2aWV1dW5uZXZzeHZnaXFnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjUyNDYwMjYsImV4cCI6MjA0MDgyMjAyNn0.c0Gyxxw_uCytYwXkuAoROPGPsE61GkxB6aP_4LxieNY";

  // API URL for Supabase
  static const String APIURL = "https://ptllvieuunnevsxvgiqg.supabase.co";

  // Singleton instance of SupabaseClient
  static late final SupabaseClient supabaseClient;

  // Method to initialize the Supabase client
  static void initializeClient() {
    supabaseClient = SupabaseClient(APIURL, APIKEY);
    print('Supabase client initialized');
  }
}
