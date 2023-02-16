import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';

import '../models/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  const ToDoItem({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: (){
          print(todo.id);
        },
        title: Text(
          todo.title,
          style: const TextStyle(
            color: textBlack,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          child: Icon(
            todo.isDone == 1? Icons.check :Icons.close,
            color: textBlack,
          ),
        ),
        trailing: Container(
          child: IconButton(
            color: textBlack,
            icon: const Icon(
              Icons.delete,
              size: 20,
            ),
            onPressed: (){
              print(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
