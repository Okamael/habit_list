import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:habit_list/core/component/habit_item_widget.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Habit List'),
        ),
        body: HabitItemWidget(),
      ),
    );
  }
}
