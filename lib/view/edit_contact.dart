import 'package:flutter/material.dart';

class EditContact extends StatelessWidget {
  const EditContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 30,
            )),
        title: Text(
          "Add Contact",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                size: 30,
              )),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.SqTcfufj92gVRBT45d045wAAAA?rs=1&pid=ImgDetMain"),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey[300]
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo,color: Colors.black,),
                    ),
                  ),
                  bottom: -10,
                  left: 80,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.blueGrey,
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
