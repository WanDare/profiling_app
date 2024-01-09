import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/core/styles/padding.dart';
import 'package:profiling_app/pages/pages_route.dart';

class ScanQrView extends StatelessWidget {
  const ScanQrView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            top: 20,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.qr_code,
              color: Colors.orange,
              size: 30,
            ),
            onPressed: () => Get.back(),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                const Positioned(
                  child: Text(
                    "Scan Qr",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 450,
                  width: kPadding * 40,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/images/bluiebg.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // border: Border.all(
                      //   color: Colors.orange,
                      //   width: 2.0,
                      // ),
                    ),
                  ),
                ),
                Positioned(
                  top: -60.0,
                  child: Column(
                    children: [
                      Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/travelerbg.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(60.0)),
                          border: Border.all(
                            color: const Color.fromARGB(255, 45, 120, 182),
                            width: 2.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Neth Wandara",
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Scan My Contact Info",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: kPadding * 6),
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/images/qrcode.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 4, 8, 53),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(PageRouter.scannerQr);
                  },
                  child: const Text(
                    "Scan Code",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
