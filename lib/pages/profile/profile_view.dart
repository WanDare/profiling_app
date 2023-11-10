import 'package:flutter/material.dart';
import 'package:profiling_app/pages/profile/profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileWidget(),
    );
  }
}
