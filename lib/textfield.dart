import 'package:flutter/material.dart';

class MyTextField
    extends StatefulWidget {
  final Icon icon;
  final String hintText;
  const MyTextField(
      {super.key,
      required this.icon,
      required this.hintText});

  @override
  State<MyTextField> createState() =>
      _MyTextFieldState();
}

class _MyTextFieldState
    extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 6,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: widget.icon,
              labelText:
                  widget.hintText,
              border:
                  const OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacer()
      ],
    );
  }
}
