import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/pages_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          )
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: PageRouter.page,
      getPages: PageRouter.pages,
    );
  }
}