import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HabitFormWidget extends StatelessWidget {
  const HabitFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Habit Form')),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Titulo'),
          )
        ],
      ),
    );
  }
}
