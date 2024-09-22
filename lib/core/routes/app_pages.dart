import 'package:get/get.dart';
import '../../modules/home/views/home_view.dart';
import '../../modules/user/views/user_view.dart';
import '../../modules/user/bindings/user_binding.dart';
import '../bindings/initial_bindings.dart';

class AppRoutes {
  static const String home = '/';
  static const String user = '/user';

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomeView(),
      binding: InitialBindings(),
    ),
    GetPage(
      name: user,
      page: () => UserView(),
      binding: UserBinding(),
    ),
  ];
}
