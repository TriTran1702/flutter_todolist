import 'package:flutter/material.dart';
import 'package:flutter_todolist/Event/add_todo_event.dart';
import 'package:flutter_todolist/bloc/todo_bloc.dart';
import 'package:provider/provider.dart';

class TodoHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var txtToDoController = TextEditingController();
    var bloc = Provider.of<TodoBloc>(context);
    return Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: txtToDoController,
            decoration:
            InputDecoration(labelText: "Add Todo", hintText: "Add Todo"),
          ),
        ),
        SizedBox(width: 20,),
        RaisedButton.icon(onPressed: (){
          bloc.event.add(AddTodoEvent(txtToDoController.text));
          print('ok ok ok');
        },
          icon: Icon(Icons.add),
          label: Text("Add"),
        )
      ],
    );
  }

}

