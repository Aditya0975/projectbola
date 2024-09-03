import 'package:flutter/material.dart';
import 'package:project_burung/homescreen_widget.dart';
import 'package:project_burung/image_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreenWidget(),
    );
  }
}
