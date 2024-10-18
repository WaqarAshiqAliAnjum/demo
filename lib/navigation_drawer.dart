import 'package:flutter/material.dart';

class MyNavigationDrawer
    extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer>
      createState() =>
          _MyNavigationDrawerState();
}

class _MyNavigationDrawerState
    extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      backgroundColor:
          Colors.orangeAccent,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceEvenly,
        children: [
          DrawerHeader(
            child: Container(
              width: 137,
              decoration:
                  const BoxDecoration(
                      image:
                          DecorationImage(
                              image:
                                  AssetImage(
                                'assets/images/facebook.jpeg',
                              ),
                              fit: BoxFit
                                  .fill),
                      borderRadius: BorderRadius
                          .all(Radius
                              .circular(
                                  120)),
                      boxShadow: [
                    BoxShadow(
                      color: Color
                          .fromARGB(
                              255,
                              10,
                              15,
                              157),
                      offset:
                          Offset(4, 4),
                      blurRadius: 9,
                      blurStyle:
                          BlurStyle
                              .normal,
                    ),
                    BoxShadow(
                      color: Color
                          .fromARGB(
                              255,
                              150,
                              153,
                              238),
                      offset: Offset(
                          -4, -4),
                      blurRadius: 9,
                      blurStyle:
                          BlurStyle
                              .normal,
                    )
                  ]),
            ),
          ),
          ListTile(
            leading:
                const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
                Icons.logout),
            title: const Text('LogOut'),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.pages),
            title:
                const Text('New Page'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
                Icons.account_balance),
            title: const Text(
                'Create New Account'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
                Icons.settings),
            title:
                const Text('Settings'),
            onTap: () {},
          ),
          // ListTile(
          //   leading: const Icon(
          //       Icons.dark_mode),
          //   title:
          //       const Text('DarkMode'),
          //   onTap: () {},
          // ),
          // ToggleButtons(children: Widget1,Widget2, isSelected: bool1,bool2)
        ],
      ),
    );
  }
}
