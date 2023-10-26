import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:get/get.dart';
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
          const SliverToBoxAdapter(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CalendarWeeks(),
              ),
            ),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return buildCustomWidget(index, context);
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
