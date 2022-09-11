import 'package:get/get.dart';
import 'package:mess_xp_app_project/modules/login/login_binding.dart';
import 'package:mess_xp_app_project/routes/app_pages.dart';

import '../modules/login/login_view.dart';

class AppRoutes{
  static const INITIAL = AppPages.LOGIN;
  static final routes = [
    GetPage(
        name: AppPages.LOGIN,
        page: () => LoginPage(),
        bindings: [
          LoginBinding(),
        ],
    )
  ];
}