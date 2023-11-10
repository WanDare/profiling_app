import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_controller.dart';
import 'package:profiling_app/core/styles/padding.dart';
import 'package:profiling_app/pages/pages_route.dart';

class ProfileWidget extends GetView<ProfileController> {
  @override
  final ProfileController controller = Get.put(ProfileController());

  ProfileWidget({super.key});

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
                height: 250,
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
          ListTile(
            title: Center(
              child: Text(
                controller.user.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            subtitle: Center(
              child: TextButton.icon(
                onPressed: () {
                  Get.toNamed(PageRouter.scanQr);
                },
                icon: const Icon(Icons.assignment_ind_rounded),
                label: const Text("ID CARD"),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Container(
              height: 445,
              clipBehavior: Clip.none,
              color: const Color.fromARGB(235, 255, 255, 255),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: kPadding * 45,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                              child: Text(
                                "Personal Info",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: Text(
                                "Position |   ${controller.user.position}",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: Text(
                                "Gender |   ${controller.user.gender}",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: Text(
                                "Email Address |   ${controller.user.email}",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: Text(
                                "Phone Number |   ${controller.user.phoneNumber}",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(PageRouter.scanQr);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Container(
                                height: kPadding * 4,
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    right: 10,
                                    left: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.language,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Language',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(PageRouter.scanQr);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Container(
                                height: kPadding * 4,
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    right: 10,
                                    left: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.settings,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Setting',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(PageRouter.authenticate);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Container(
                                height: kPadding * 4,
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    right: 10,
                                    left: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.logout,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Logout',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
