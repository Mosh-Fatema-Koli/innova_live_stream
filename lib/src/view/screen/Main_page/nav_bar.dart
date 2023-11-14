
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innova_live_streem/src/view/screen/Home/home_page.dart';
import 'package:innova_live_streem/src/view/screen/search/search.dart';

class BottomNaVBarPage extends StatelessWidget {
  BottomNaVBarPage({Key? key}) : super(key: key);

  final RxInt selectedIndex = 0.obs;

  final List<Widget> pages = [
    HomePage(),
    SearchPage(),
    HomePage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => pages[selectedIndex.value]),
        floatingActionButton: buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:BottomAppBar(
        shape: CircularNotchedRectangle(),
         notchMargin: 15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(0, Icons.home, 'Home'),
            buildNavBarItem(1, Icons.search, 'Search'),
            SizedBox(width: 48.0),
            buildNavBarItem(2, Icons.video_collection, 'Profile'),// Spacer
            buildNavBarItem(3, Icons.person, 'Profile'),
          ],
        ),
      )
    );
  }

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      shape: CircleBorder(),
      onPressed: () {
      },
      child: Icon(Icons.add),
    );
  }

  Widget buildNavBarItem(int index, IconData icon, String label) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () {
       selectedIndex.value = index;
      },
    );
  }




}
