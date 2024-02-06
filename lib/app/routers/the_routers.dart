import 'package:debolsillo_app/app/models/main_model.dart';
import 'package:get/get.dart';

import '../UI/pages/clients_pages.dart';
import '../UI/screens/screens.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => const MainPage(),
    ),
    GetPage(
      name: '/register',
      page: () => const NeedRegisterScreen(),
    ),
    GetPage(
      name: '/home',
      page: () => HomeMenuScreen(),
    ),
    GetPage(
      name: '/clients',
      page: () => const ClientModuloPages(),
    ),
  ];
}
