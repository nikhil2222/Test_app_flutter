import 'package:flutter/material.dart';

import 'bgimage.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({

    required this.myText,
    required TextEditingController nameContoller,
  }) : _nameController = nameContoller;

  final String myText;
  final TextEditingController _nameController;





  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(
          myText,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.teal),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            // keyboardType: TextInputType.phone,
            // obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter something here",
              labelText: "Name",
            ),
          ),
        )
      ],
    );
  }
}
