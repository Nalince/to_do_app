import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        title:  const Text('To do App'),
      ),
      body: const Center(
        child: Text('Hello world'),
      ),
    );
  }
}

