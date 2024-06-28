import 'package:contact_app/view/contacts.dart';
import 'package:contact_app/widgets/popup.dart';
import 'package:contact_app/widgets/textFeild.dart';
import 'package:flutter/material.dart';

class EditContact extends StatelessWidget {
  EditContact({super.key});
  final TextEditingController controllerFirstName = TextEditingController();
  final TextEditingController controllerPhone = TextEditingController();
  final TextEditingController controllerLastName = TextEditingController();
  final TextEditingController controllerCompany = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();

  final FocusNode focusFirstName = FocusNode();
  final FocusNode focusLastName = FocusNode();
  final FocusNode focusCompanyName = FocusNode();
  final FocusNode focusPhone = FocusNode();
  final FocusNode focusEmail = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
          title: const Text(
            "Create contact",
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                },
                child: const Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF965d55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
            Popup(),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.add_photo_alternate_outlined,size: 40,),
                    backgroundColor: Color(0xFFffdad2),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            MyTextField(hintText: "First Name", controller: controllerFirstName, focusNode: focusFirstName),
            MyTextField(hintText: "Last Name", controller: controllerLastName, focusNode: focusLastName),
            MyTextField(hintText: "Company", controller: controllerCompany, focusNode: focusCompanyName),
            MyTextField(hintText: "Email", controller: controllerPhone, focusNode: focusEmail),
          ],
        ),
      );
  }
}
