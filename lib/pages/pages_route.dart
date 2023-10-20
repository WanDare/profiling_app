import 'package:get/get.dart';
import 'package:profiling_app/pages/authenticate/authenticate_view.dart';
import 'package:profiling_app/pages/home/home_view.dart';
import 'package:profiling_app/pages/pages_view.dart';
import 'package:profiling_app/splash_screen.dart';

class PageRouter {
  static const String splashScreen = '/splash_screen';
  static const String page = '/';
  static const String authenticate = '/authenticate';
  static const String home = '/home';
  static const String cart = '/cart';
  static const String search = '/search';
  static const String profile = '/profile';
  static const String show = '/show';
  static String detail(id) => '/detail/$id';

  static final pages = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: page,
      page: () => const PageView(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: authenticate,
      page: () => const AuthenticateView(),
    ),
    GetPage(
        name: show,
        page: () => const HomeView(),
        transition: Transition.native,
        transitionDuration: const Duration(milliseconds: 500)),
    // GetPage(
    //     name: detail(':id'),
    //     page: () => const DetailView(),
    //     transition: Transition.native,
    //     transitionDuration: const Duration(milliseconds: 500)),
  ];
}
