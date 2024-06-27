import 'package:contact_app/widgets/navigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatelessWidget {
   ContactsView({super.key});

  final List<Map<String, String>> contacts = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25, vertical: 5.0),
                child: const Center(
                  child: Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide.none
                        ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              borderSide: BorderSide(color: Color(0xFFe8bdb6)),
                          ),
                          hintText: "Search",
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.mic),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
