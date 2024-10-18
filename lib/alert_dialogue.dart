import 'package:flutter/material.dart';

class MyAlertDialog
    extends StatefulWidget {
  const MyAlertDialog({super.key});

  @override
  State<MyAlertDialog> createState() =>
      _MyAlertDialogState();
}

class _MyAlertDialogState
    extends State<MyAlertDialog> {
  late TextEditingController
      _incrementCounter;

  @override
  void initState() {
    super.initState();
    _incrementCounter =
        TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color
              .fromARGB(255, 26, 127,
              209), // Change this to your desired color
        ),
        onPressed: () {
          _incrementCounter;

          showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(
              elevation: 20,
              content: const Text(
                  'Do you want to Save Password ? '),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                              context)
                          .pop();
                      ScaffoldMessenger
                              .of(
                                  context)
                          .showSnackBar(
                              const SnackBar(
                        content: Text(
                            'Your password saved. And Logined Successfully'),
                      ));
                    },
                    child: const Text(
                        'Yes')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                              context)
                          .pop();
                      ScaffoldMessenger
                              .of(
                                  context)
                          .showSnackBar(
                              const SnackBar(
                                  content:
                                      Text('Login failed')));
                    },
                    child: const Text(
                        'No'))
              ],
            ),
          );
        },
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ));
  }
}
