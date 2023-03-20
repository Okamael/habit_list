import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:habit_list/core/component/habit_item_form.widget.dart';
import 'package:habit_list/core/component/habit_item_list_widget.dart';
import 'package:habit_list/core/component/habit_item_widget.dart';

import 'core/model/habit_domain.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<HabitDomain> habitListItem = [
    HabitDomain(id: '1', title: 'Ir para Academia', isCompleted: true),
    HabitDomain(id: '2', title: 'Correr na rua', isCompleted: false),
    HabitDomain(id: '3', title: 'Natação', isCompleted: false),
    HabitDomain(id: '4', title: 'Estudar', isCompleted: false),
    HabitDomain(id: '5', title: 'Ver anime 1', isCompleted: false),
    HabitDomain(id: '6', title: 'Ver anime 2', isCompleted: false),
    HabitDomain(id: '7', title: 'Ver anime 3', isCompleted: true),
    HabitDomain(id: '8', title: 'Ver anime 4', isCompleted: true),
    HabitDomain(id: '9', title: 'Ver anime 5', isCompleted: true),
    HabitDomain(id: '10', title: 'Ver anime 6', isCompleted: false),
    HabitDomain(id: '11', title: 'Ver anime 7', isCompleted: false),
    HabitDomain(id: '12', title: 'Ver anime 8', isCompleted: true),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Habit List'),
        ),
        body: HabitItemListWidget(habitListItem: habitListItem),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HabitFormWidget()));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
