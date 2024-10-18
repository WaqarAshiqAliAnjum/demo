import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_input_validation/alert_dialogue.dart';
import 'package:flutter_input_validation/custom_dialog.dart';
import 'package:flutter_input_validation/extension_file.dart';
import 'package:flutter_input_validation/bottom_navigation_bar.dart';
import 'package:flutter_input_validation/navigation_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(
                seedColor:
                    Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title:
              'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage
    extends StatefulWidget {
  const MyHomePage(
      {super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState();
}

class _MyHomePageState
    extends State<MyHomePage> {
  late TextEditingController _username;

  late TextEditingController _password;

  late TextEditingController _firstName;
  late TextEditingController
      _secondName;

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
    _firstName =
        TextEditingController();
    _secondName =
        TextEditingController();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    _firstName.dispose();
    _secondName.dispose();
    super.dispose();
  }

  //use this selected index for bottom navigation bar
  int selectedIndex = 0;

  // for chekbox

  GlobalKey<FormState> formGlobalKey =
      GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor:
            Colors.orangeAccent,
        centerTitle: true,
        title: Title(
            color: Colors.black,
            child: const Text(
              'Facbook Login ',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight:
                      FontWeight.bold),
            )),
      ),
      drawer:
          const MyNavigationDrawer(),
      body: Center(
        child: Form(
          key: formGlobalKey,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              const Spacer(),
              Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      const Spacer(),
                      Container(
                        width: 145,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/facebook.jpeg'),
                                fit: BoxFit
                                    .fill),
                            borderRadius:
                                BorderRadius.all(
                                    Radius.circular(120)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(
                                      255,
                                      107,
                                      198,
                                      255),
                                  offset: Offset(4,
                                      4),
                                  blurRadius:
                                      9,
                                  blurStyle: BlurStyle
                                      .normal,
                                  spreadRadius:
                                      3),
                              BoxShadow(
                                  color: Color.fromARGB(
                                      255,
                                      107,
                                      198,
                                      255),
                                  offset: Offset(-4,
                                      -4),
                                  blurRadius:
                                      9,
                                  blurStyle: BlurStyle
                                      .normal,
                                  spreadRadius:
                                      1)
                            ]),
                      ),
                      const Spacer()
                    ],
                  )),
              const Spacer(),
              const Expanded(
                  flex: 2,
                  child: Row(children: [
                    Spacer(),
                    Text(
                      "Facebook",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight:
                              FontWeight
                                  .bold),
                    ),
                    Spacer(),
                  ])),
              const Spacer(),
              Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 6,
                        child:
                            TextFormField(
                          controller:
                              _username,
                          keyboardType:
                              TextInputType
                                  .text,
                          validator: (value) =>
                              value.isEmptyNull()
                                  ? 'Email or username required'
                                  : null,
                          decoration:
                              const InputDecoration(
                                  border:
                                      OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  label:
                                      OverflowBar(
                                    children: [
                                      Icon(Icons.person),
                                      Text('Email/Username')
                                    ],
                                  )),
                          maxLength: 25,
                        ),
                      ),
                      const Spacer()
                    ],
                  )),
              const Spacer(),
              Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 6,
                        child:
                            TextFormField(
                          obscureText:
                              true,
                          controller:
                              _password,
                          keyboardType:
                              TextInputType
                                  .text,
                          validator: (value) =>
                              value.isEmptyNull()
                                  ? 'Password required'
                                  : null,
                          decoration:
                              const InputDecoration(
                            suffixIcon:
                                Icon(Icons
                                    .visibility),
                            border:
                                OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(10)),
                            ),
                            label:
                                OverflowBar(
                              children: [
                                Icon(Icons
                                    .lock),
                                Text(
                                    'Password'),
                              ],
                            ),
                          ),
                          maxLength: 20,
                        ),
                      ),
                      const Spacer()
                    ],
                  )),
              const Expanded(
                  child: Row(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    'Forget Password',
                    style: TextStyle(
                        color:
                            Colors.red),
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              )),
              const Spacer(),
              const Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Spacer(),
                    Expanded(
                        flex: 5,
                        child:
                            MyAlertDialog()),
                    Spacer()
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                indent: 100,
                endIndent: 100,
              ),
              const Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Spacer(),
                    Expanded(
                        flex: 5,
                        child:
                            MyCustomDialog()),
                    Spacer()
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          const MyBottomNavigationBar(),
    );
  }

  void _incrementCounter() {
    formGlobalKey.currentState
        ?.validate();
  }
}
