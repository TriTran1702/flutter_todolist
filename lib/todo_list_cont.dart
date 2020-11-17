import 'package:flutter/material.dart';
import 'package:flutter_todolist/todo_list.dart';
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
