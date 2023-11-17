import 'package:nanoudesu_s_application1/presentation/login_android_screen/login_android_screen.dart';
import 'package:nanoudesu_s_application1/presentation/login_android_screen/binding/login_android_binding.dart';
import 'package:nanoudesu_s_application1/presentation/menu_android_screen/menu_android_screen.dart';
import 'package:nanoudesu_s_application1/presentation/menu_android_screen/binding/menu_android_binding.dart';
import 'package:nanoudesu_s_application1/presentation/menu_android_active_screen/menu_android_active_screen.dart';
import 'package:nanoudesu_s_application1/presentation/menu_android_active_screen/binding/menu_android_active_binding.dart';
import 'package:nanoudesu_s_application1/presentation/akun_saya_screen/akun_saya_screen.dart';
import 'package:nanoudesu_s_application1/presentation/akun_saya_screen/binding/akun_saya_binding.dart';
import 'package:nanoudesu_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:nanoudesu_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginAndroidScreen = '/login_android_screen';

  static const String menuAndroidScreen = '/menu_android_screen';

  static const String menuAndroidActiveScreen = '/menu_android_active_screen';

  static const String akunSayaScreen = '/akun_saya_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginAndroidScreen,
      page: () => LoginAndroidScreen(),
      bindings: [
        LoginAndroidBinding(),
      ],
    ),
    GetPage(
      name: menuAndroidScreen,
      page: () => MenuAndroidScreen(),
      bindings: [
        MenuAndroidBinding(),
      ],
    ),
    GetPage(
      name: menuAndroidActiveScreen,
      page: () => MenuAndroidActiveScreen(),
      bindings: [
        MenuAndroidActiveBinding(),
      ],
    ),
    GetPage(
      name: akunSayaScreen,
      page: () => AkunSayaScreen(),
      bindings: [
        AkunSayaBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginAndroidScreen(),
      bindings: [
        LoginAndroidBinding(),
      ],
    )
  ];
}
