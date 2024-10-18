import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_input_validation/textfield.dart';

class MyCustomDialog
    extends StatefulWidget {
  const MyCustomDialog({super.key});

  @override
  State<MyCustomDialog> createState() =>
      _MyCustomDialogState();
}

class _MyCustomDialogState
    extends State<MyCustomDialog> {
  late TextEditingController _firstName;
  late TextEditingController
      _secondName;

  @override
  void initState() {
    super.initState();
    _firstName =
        TextEditingController();
    _secondName =
        TextEditingController();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _secondName.dispose();
    super.dispose();
  }

  static const male = 'Male';
  static const femail = 'Femail';
  static const others = 'Others';
  String groupValue = male;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(
            backgroundColor:
                const Color.fromARGB(
                    255, 168, 244, 54),
          ),
          onPressed: () {
            log('Button clicked');

            showGeneralDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel: 'Dismiss',
              pageBuilder: (context,
                  animation,
                  secondaryAnimation) {
                return Dialog(
                  backgroundColor:
                      Colors.orange,
                  child: Container(
                    height: 400,
                    width: 300,
                    decoration:
                        const BoxDecoration(
                      color:
                          Colors.white,
                      borderRadius: BorderRadius
                          .all(Radius
                              .circular(
                                  70)),
                    ),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                'Sign up',
                                style: TextStyle(
                                    fontSize:
                                        25,
                                    fontWeight:
                                        FontWeight.bold),
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child:
                              MyTextField(
                            icon: Icon(Icons
                                .person),
                            hintText:
                                'First Name',
                          ),
                        ),
                        const Spacer(),
                        const Expanded(
                          flex: 2,
                          child:
                              MyTextField(
                            icon: Icon(Icons
                                .person),
                            hintText:
                                'Second Name',
                          ),
                        ),
                        const Spacer(),
                        const Expanded(
                            child: Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              'Select Gendar?',
                              style: TextStyle(
                                  fontWeight: FontWeight
                                      .bold,
                                  fontSize:
                                      20),
                            ),
                            Spacer()
                          ],
                        )),
                        OverflowBar(
                          children: [
                            const Spacer(),
                            RadioListTile(
                              value:
                                  male,
                              groupValue:
                                  groupValue,
                              onChanged:
                                  (value) =>
                                      setState(() {
                                groupValue =
                                    value!;
                              }),
                              secondary:
                                  const Text(
                                      male),
                            ),
                            RadioListTile(
                              value:
                                  femail,
                              groupValue:
                                  groupValue,
                              onChanged:
                                  (value) =>
                                      setState(() {
                                groupValue =
                                    value!;
                              }),
                              secondary:
                                  const Text(
                                      femail),
                            ),

                            // const Spacer()
                          ],
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              const Spacer(),
                              ElevatedButton(
                                  onPressed:
                                      () {
                                    Navigator.of(context).pop();
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Go next page for other mendatory requirements')));
                                  },
                                  child:
                                      const Text('Next')),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text(
              'Create New Account')),
    );
  }
}
