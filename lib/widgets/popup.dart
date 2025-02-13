import 'package:flutter/material.dart';


class Popup extends StatelessWidget {
  Popup({super.key});

  final menu1 = Text("Delete");
  final menu2 = Text("Delete");
  final menu3 = Text("Delete");


  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (value) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => value),
        );
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text('Setting'),
          value: menu1,
        ),
        PopupMenuItem(
          child: Text('Profile'),
          value: menu2,
        ),
      ],
    );
  }
}

