import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_supabse/app/credebtials/supabase.credentials.dart';
import 'package:todo_supabse/app/provider/app.provider.dart';
import 'package:todo_supabse/routes/app.routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SupabaseCredentials.initializeClient();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: const RunApp(),
    );
  }
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.LoginRoute,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
