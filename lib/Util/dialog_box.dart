import 'package:flutter/material.dart';
import 'package:todolist/Util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightBlue[100],
      content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //get user input
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              )
              
              ),

              Row(

                children: [MyButton(text: 'Save', onPressed: (){}),
                
                const SizedBox(width:20),
                
                MyButton(text: 'Cancel', onPressed: (){})
                ],
                //Save Button
                
                //Cancel Button

              )
            ],
          )),
    );
  }
}
