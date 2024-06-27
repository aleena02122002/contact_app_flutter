import 'package:contact_app/view/contacts.dart';
import 'package:contact_app/view/edit_contact.dart';
import 'package:contact_app/view/recent.dart';
import 'package:flutter/material.dart';
class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int index = 0;

  final screens= [
    EditContact(),
    RecentView(),
    ContactsView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
        ),
        child: NavigationBar(
            height: 60,
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.star_border),
                label: 'favorite',
              ),
              NavigationDestination(
                icon: Icon(Icons.access_time_outlined),
                label: 'recent',
              ),
              NavigationDestination(
                icon: Icon(Icons.people_alt),
                label: 'contacts',
              ),

            ]),
      ),
    );
  }
}
