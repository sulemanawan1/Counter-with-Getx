import 'package:flutter/material.dart';
import 'package:getxpractice/View/Counter/counter_ui.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterUi(),
    );
  }
}
