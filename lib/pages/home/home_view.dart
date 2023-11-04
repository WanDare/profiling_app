import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/core/styles/size.dart';
import 'package:profiling_app/pages/home/home_controller.dart';
import 'package:profiling_app/pages/shared/Calendar_widget.dart';
import 'package:profiling_app/pages/home/home_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 8, 53),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 150.0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bluiebg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const FlexibleSpaceBar(
                title: Text(
                  'Improve Our life \nWith Just a QR Code',
                  style: TextStyle(color: Colors.white),
                ),
                titlePadding: EdgeInsets.only(left: 35),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: kPadding * 42),
              child: IconButton(
                icon: const Icon(
                  Icons.circle_notifications_rounded,
                  color: Colors.white,
                  size: kPadding * 4,
                ),
                onPressed: () => Get.back(),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CalendarWeeks(),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            sliver: SliverFixedExtentList(
              itemExtent: 150.0,
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/travelerbg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white38,
                            Color.fromARGB(255, 4, 8, 53),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code_rounded,
                            color: Colors.orange,
                            size: kPadding * 5,
                          ),
                          Text(
                            'My CheckMe Card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }, childCount: 1),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              right: kSpace * 2,
              left: kSpace * 2,
              bottom: kSpace * 10,
            ),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                final item = AttendanceController.attendanceModelList[index];

                return ItemWidget(
                  icons: item.icon,
                  title: item.title,
                  description: item.description,
                );
              },
              itemCount: AttendanceController.attendanceModelList.length,
            ),
          ),
        ],
      ),
    );
  }
}
