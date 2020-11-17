import 'package:flutter/material.dart';
import 'package:flutter_todolist/bloc/todo_bloc.dart';
import 'package:flutter_todolist/model/todo.dart';
import 'todo_list_cont.dart';
import 'todo_header.dart';
import 'todo_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
               primarySwatch: Colors.blue,
      ),
      home:Scaffold(
          appBar: AppBar (
        title: Text("TODO List"),
        ),
          body:Provider<TodoBloc>.value(
              value: TodoBloc(),
              child: ToDoListContainer())),

    );
  }
}
