import 'package:flutter/material.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() {
    return _ParentState();
  }
}

class _ParentState extends State<Parent> {
  @override
  Widget build(BuildContext context) {
    Widget childWidget = Child1();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [Colors.green, Colors.blue]),
          ),
          child: Child1(),
        ),
      ),
    );
  }
}
