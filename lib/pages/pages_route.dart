import 'package:get/get.dart';
import 'package:profiling_app/pages/home/home_view.dart';
import 'package:profiling_app/pages/pages_view.dart';

class PageRouter {
  static const String page = '/';
  static const String home = '/home';
  static const String cart = '/cart';
  static const String search = '/search';
  static const String profile = '/profile';
  static const String show = '/show';
  static String detail(id) => '/detail/$id';

  static final pages = [
    GetPage(
      name: page,
      page: () => const PageView(),
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
