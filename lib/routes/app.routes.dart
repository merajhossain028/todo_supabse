import 'package:todo_supabse/meta/views/authentication/login.dart';
import 'package:todo_supabse/meta/views/authentication/signup.view.dart';

class AppRoutes {
  static const String LoginRoute = '/login';
  static const String SignupRoute = '/signup';
  static final routes = {
    LoginRoute: (context) => const LoginView(),
    SignupRoute: (context) => const SignupView(),
  };
}
