import 'package:flutter/material.dart';
import 'package:todolist/Util/dialog_box.dart';
import 'package:todolist/Util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of to do tasks
  List toDoList = [
    ['Make Tutorial', false],
    ['Build Quest', false],
    ['Cry about job', false],
  ];

  //Checkbox was tapped

  void checkBoxChanged(bool? Value, int index){

    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });

  }


//Create a new task
void createNewTask(){
  showDialog(context: context,
             builder: (context)
             {
              return DialogBox();
             }
             );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'To Do List',
          ),
          centerTitle: true,
        ),

        floatingActionButton: FloatingActionButton(onPressed:createNewTask,
        child: Icon(Icons.add),
        ),
        body: ListView.builder(
        
        itemCount:toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
          
          taskName: toDoList[index][0], 
          taskCompleted: toDoList[index][1], 
          onChanged:(Value) => checkBoxChanged(Value, index),);
        }

        )
        
        
        );
  }
}
