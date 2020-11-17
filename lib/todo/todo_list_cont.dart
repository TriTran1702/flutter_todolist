import 'package:flutter/material.dart';
import 'file:///C:/Users/MakarovOS/AndroidStudioProjects/flutter_todolist/lib/todo/todo_list.dart';
import 'todo_header.dart';
class ToDoListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TodoHeader(),
          Expanded(child: TodoList(),
          ),
        ],
      ),
    );
  }
}
