import 'package:contact_app/view/contacts.dart';
import 'package:contact_app/widgets/navigationBar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyNavigationBar(),
      body: ContactsView(),
    );
  }
}
