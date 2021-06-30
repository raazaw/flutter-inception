import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int day = 20;
  final String name = "Raj";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Hero"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text("welcome to $day day course of flutter by $name"),
          ),
        ),
      ),
      drawer: Drawer(
        child: Center(child: Text("Hello $name")),
      ),
    );
  }
}
