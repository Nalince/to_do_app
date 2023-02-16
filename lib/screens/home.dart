import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/models/todo.dart';
import 'package:to_do_app/widgets/todo_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final tasks = ToDo.todoList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _appBarWidget(),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'To Do List',
                      style: TextStyle(
                        color: textBlack,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: tasks.length,
                  itemBuilder: (context, index) => ToDoItem(
                    todo: tasks[index],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
      backgroundColor: tdBlue,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: textWhite,
            size: 30,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/avatar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
