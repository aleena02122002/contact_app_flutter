import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;

  const MyTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.focusNode,
    this.validator,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextFormField(
        cursorColor: const Color(0xFF965d55),
        focusNode: widget.focusNode,
        controller: widget.controller,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.always,
        decoration: InputDecoration(

          labelText: widget.hintText,
          labelStyle: TextStyle(
            color: widget.focusNode!.hasFocus ? Color(0xFF965d55) : Colors.black38,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: Colors.black38),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: Color(0xFF965d55), width: 2.0),
          ),
        ),
      ),
    );
  }
}
