import 'package:flutter/material.dart';
import 'package:uyishi/attt.dart';
import 'package:uyishi/portred.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: orientation == Orientation.portrait
            ? AppHomePortrait()
            : AppHomeLadscape(),

        backgroundColor: Colors.blue[600],
        //
      ),
      body: Center(
        child: SingleChildScrollView(
            child: orientation == Orientation.portrait
                ? BoxsesColumn()
                : BoxesRow()),
      ),
    );
  }
}

