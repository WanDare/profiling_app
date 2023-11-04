import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/core/styles/padding.dart';
import 'package:profiling_app/pages/pages_route.dart';
import 'package:profiling_app/pages/profile/profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileWidget(),
    );
  }
}
