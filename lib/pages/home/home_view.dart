import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/core/styles/size.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 5, 32),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 300.0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bluiebg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const FlexibleSpaceBar(
                title: Text(
                  'Khmer Calendar',
                  style: TextStyle(color: Colors.white),
                ),
                titlePadding: EdgeInsets.only(left: 35, bottom: kPadding * 24),
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
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text(
                    'Grid Item $index',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
              childCount: 30,
            ),
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
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
