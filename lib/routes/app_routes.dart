import 'package:get/get.dart';
import '../modules/dashboard/dashboard_binding.dart';
import '../modules/dashboard/dashboard_view.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_view.dart';
import '../modules/registration/registration_binding.dart';
import '../modules/registration/registration_view.dart';
import 'app_pages.dart';

class AppRoutes{
  static final INITIAL =AppPages.LOGIN;
  static final routes = [
    GetPage(
      name: AppPages.LOGIN,
      page: () => const LoginPage(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
        name: AppPages.REGISTRATION,
        page: () => const RegisterPage(),
        bindings: [
          RegistrationBinding(),
        ]
    ),
    GetPage(
        name: AppPages.DASHBOARD,
        page: () => const DashboardPage(),
        bindings: [
          DashboardBinding(),
        ]
    ),
  ];
}