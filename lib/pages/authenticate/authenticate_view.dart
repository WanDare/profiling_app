import 'package:flutter/material.dart';
import 'package:profiling_app/core/styles/size.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/pages_route.dart';

class AuthenticateView extends StatelessWidget {
  const AuthenticateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Get.toNamed(PageRouter.home);
                },
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed(PageRouter.home);
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Image.network(
                "https://cdn.logojoy.com/wp-content/uploads/20220503151426/square-logo-outline-container.png"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Login",
                  style:
                      TextStyle(fontSize: kFont, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign Up",
                  style:
                      TextStyle(fontSize: kFont, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
