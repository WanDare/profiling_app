import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/pages_route.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                "assets/images/bluiebg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            // AppBar(
            //   backgroundColor: Colors.transparent,
            //   leading: IconButton(
            //     icon: const Icon(
            //       Icons.favorite_border,
            //       color: Colors.black,
            //     ),
            //     onPressed: () {
            //       Get.toNamed(PageRouter.chekin);
            //     },
            //   ),
            // ),
            const Positioned(
              bottom: -50.0,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/travelerbg.jpg"),
              ),
            ),
          ],
        ),
        SizedBox(height: 65),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 300,
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Sr. Neth Wandara",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    "Roles: Flutter developer & React Developer",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text(
                  "Description: ",
                  style: TextStyle(color: Colors.blue),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.assignment_ind_rounded),
                  label: Text("ID CARD"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
