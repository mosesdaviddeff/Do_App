// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:thetodoapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: "Add a New Task", 
              ),
            ),

            //buttons => save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              //save Button
              MyButton(text: "Save", onPressed: onSave),

              const SizedBox(
                width: 8.0,
              ),
              
              //cancel Buttom
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
            )
          ],
        ),
      ),
    );
  }
}