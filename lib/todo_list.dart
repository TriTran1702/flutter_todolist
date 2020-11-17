import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todolist/Event/delete_todo_event.dart';
import 'package:flutter_todolist/bloc/todo_bloc.dart';
import 'package:flutter_todolist/model/todo.dart';
import 'package:provider/provider.dart';

class TodoList extends StatefulWidget{
  @override
  _ToDoListState createState()=> _ToDoListState();
}
class _ToDoListState extends State<TodoList>{
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoBloc>(builder: (context, bloc, child)=>StreamBuilder<List<Todo>>(
      stream: bloc.todoListStream,
     builder: (context,snapshot) {
       switch (snapshot.connectionState) {
         case ConnectionState.active:
           return ListView.builder(
               itemCount: snapshot.data.length,
               itemBuilder: (context, index) {
                 return ListTile(
                   title: Text(
                     snapshot.data[index].content,
                     style: TextStyle(fontSize: 16),
                   ),
                   trailing: GestureDetector(
                     onTap: () {
                       bloc.event.add(DeleteTodoEvent(snapshot.data[index]));
                     },
                     child: Icon(
                       Icons.delete,
                       color: Colors.red[400],
                     ),
                   ),
                 );
               });
         case ConnectionState.none:
         default:
           return Center(
             child: Container(
               width: 50,
               height: 50,
               child: CircularProgressIndicator(),
             ),
           );
       }
       },
    ),
    );
  }
}