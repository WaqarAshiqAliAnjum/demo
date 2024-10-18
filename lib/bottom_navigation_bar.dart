import 'package:flutter/material.dart';

class MyBottomNavigationBar
    extends StatefulWidget {
  const MyBottomNavigationBar({super.key, 
   
  });

  @override
  State<MyBottomNavigationBar>
      createState() =>
             _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState
    extends State<MyBottomNavigationBar> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return    BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed,
        backgroundColor:
            Colors.orangeAccent,
        currentIndex: selectedIndex,
        elevation: 30,
        showSelectedLabels: true,
        selectedItemColor:
            Colors.blueAccent,
        unselectedItemColor:
            Colors.white,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              tooltip: 'go to home'),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.featured_video),
              label: "Videos",
              tooltip:
                  'featured videos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Groups",
              tooltip: 'go to Groups'),
          BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: "Updates",
              tooltip: 'go to Update'),
          BottomNavigationBarItem(
              icon: Icon(Icons
                  .notification_add),
              label: "Notifications",
              tooltip:
                  'go to notification'),
        ],
      );
  }
}
