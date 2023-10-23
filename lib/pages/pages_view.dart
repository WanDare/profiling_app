import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';
import 'package:profiling_app/pages/authenticate/authenticate_view.dart';
import 'package:profiling_app/pages/home/home_controller.dart';
// import 'package:pizza_food/xcore.dart';
import 'package:profiling_app/pages/pages_controller.dart';
import 'package:profiling_app/pages/profile/profile_view.dart';

import 'home/home_view.dart';

class PageView extends GetView<PagesController> {
  const PageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(PagesController());
    return Scaffold(
      key: PagesController.scaffoldKey,
      // drawer: const SidebarWidget(
      //   profile:
      //       'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      // ),
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: const <Widget>[
            HomeView(),
            ProfileView(),
            // CartView(),
            // SearchView(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => Visibility(
            visible: HomeController.isLoading.isTrue,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: Colors.black,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    duration: const Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.grey[100]!,
                    color: Colors.black,
                    tabs: const <GButton>[
                      GButton(
                        icon: LineIcons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: LineIcons.shoppingBasket,
                        text: 'Cart',
                      ),
                      GButton(
                        icon: LineIcons.search,
                        text: 'Search',
                      ),
                      GButton(
                        icon: LineIcons.user,
                        text: 'Profile',
                      ),
                    ],
                    selectedIndex: controller.selectedIndex.value,
                    onTabChange: (index) {
                      controller.selectedIndex.value = index;
                    },
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
