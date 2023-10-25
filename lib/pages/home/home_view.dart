import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:get/get.dart';
import 'package:profiling_app/core/styles/size.dart';
import 'package:profiling_app/pages/home/Calendar_widget.dart';
import 'package:profiling_app/pages/profile/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 8, 53),
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
                  'ChekIn Calendar',
                  style: TextStyle(color: Colors.white),
                ),
                titlePadding: EdgeInsets.only(left: 35),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => Get.back(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CalendarWeek(
                  backgroundColor: Colors.transparent,
                  // controller: _controller,
                  height: 100,
                  showMonth: false,
                  minDate: DateTime.now().add(
                    Duration(days: -365),
                  ),
                  maxDate: DateTime.now().add(
                    Duration(days: 365),
                  ),
                  // onDatePressed: (DateTime datetime) {
                  //   // Do something
                  //   setState(() {});
                  // },
                  // onDateLongPressed: (DateTime datetime) {
                  //   // Do something
                  // },
                  // onWeekChanged: () {
                  //   // Do something
                  // },
                  // monthViewBuilder: (DateTime time) => Align(
                  //   alignment: FractionalOffset.center,
                  //   child: Container(
                  //       // margin: const EdgeInsets.symmetric(vertical: 4),
                  //       ),
                  // ),
                  decorations: [
                    DecorationItem(
                      decorationAlignment: FractionalOffset.bottomRight,
                      date: DateTime.now(),
                      decoration: const Icon(
                        Icons.check_circle,
                        color: Colors.white54,
                      ),
                    ),

                    // DecorationItem(
                    //   date: DateTime.now().add(Duration(days: 3)),
                    //   decoration: Text(
                    //     'Holiday',
                    //     style: TextStyle(
                    //       color: Colors.brown,
                    //       fontWeight: FontWeight.w600,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigate to another page when a grid item is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      15.0), // Adjust the radius as needed
                  child: Container(
                    color: Colors.white,
                    height: Get.height * 0.10,
                    width: Get.width * 0.4,
                  ),
                ),
              );
            },
            itemCount: 10,
          ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         color: Colors.white,
          //         height: 150.0,
          //         child: Center(
          //           child: Text(
          //             '$index',
          //             textScaleFactor: 5,
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //       );
          //     },
          //     childCount: 10,
          //   ),
          // ),
        ],
      ),
    );
  }
}
