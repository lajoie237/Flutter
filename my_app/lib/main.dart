import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( //permert d'avoir une app bar
        appBar: AppBar(
          title: Text("Proverbe Biblique"),
        ),
        body: Center(child: Text("Bienvenue sur ProBibli"),)
      ),


    );
  }
}