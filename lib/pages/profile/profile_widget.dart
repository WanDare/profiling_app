import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/pages_route.dart';
import 'package:profiling_app/pages/scan_qr/scan_qr_view.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                height: 240,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/bluiebg.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/travelerbg.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(100.0)),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Container(
              height: 505,
              clipBehavior: Clip.none,
              color: Colors.white,
              child: Column(
                children: [
                  const ListTile(
                    title: Center(
                      child: Text(
                        "Neth Wandara",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    subtitle: Center(
                      child: Text(
                        "Position  |  Flutter Developer & React Developer",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Description  | ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Get.toNamed(PageRouter.scanQr);
                        },
                        icon: const Icon(Icons.assignment_ind_rounded),
                        label: const Text("ID CARD"),
                      ),
                    ],
                  ),
                  Text("Feedback"),
                  Text("Theme"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
