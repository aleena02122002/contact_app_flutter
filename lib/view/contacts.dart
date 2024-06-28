import 'package:contact_app/widgets/navigationBar.dart';
import 'package:contact_app/widgets/popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatelessWidget {
   ContactsView({super.key});

   final List<Map<String, String>> contacts = [
     {"name": "Ben", "number": "034581938"},
     {"name": "Ben", "number": "034581938"},
     {"name": "Ben", "number": "034581938"},
     {"name": "Ben", "number": "034581938"},
     {"name": "Ben", "number": "034581938"},
     {"name": "Ben", "number": "034581938"},
   ];

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
                          fillColor: Color(0xFFf3e9ea),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.mic),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    TextButton(onPressed: (){}, child: Row(
                      children: [
                        Icon(Icons.person_add_alt,color: Color(0xFF965d55),size: 25,),
                        SizedBox(width: 10),
                        Text('Create new contact',style: TextStyle(color: Color(0xFF965d55),fontSize: 15),),
                      ],
                    )),
                    SizedBox(
                      height: 550,
                      child: ListView.builder(
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(Icons.account_circle_rounded),
                            title: Text("${contacts[index]["name"]}"),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(alignment: Alignment.bottomRight,child: FloatingActionButton(onPressed: (){},child: Icon(Icons.dialpad,color: Colors.white,),backgroundColor: Color(0xFF965d55),)),
            ],
          ),
        ),
      ),
    );
  }
}
