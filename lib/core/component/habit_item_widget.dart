import 'package:flutter/material.dart';
import 'package:habit_list/core/model/habit_domain.dart';

class HabitItemWidget extends StatefulWidget {
  final HabitDomain habitItem;
  const HabitItemWidget({super.key, required this.habitItem});

  @override
  State<HabitItemWidget> createState() => _HabitItemWidgetState();
}

class _HabitItemWidgetState extends State<HabitItemWidget> {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(3),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.habitItem.title),
          Checkbox(
            value: widget.habitItem.isCompleted,
            onChanged: (value) {
              print('on chance $value');
              setState(() {
                isCompleted = value as bool;
              });
            },
          )
        ],
      ),
    );
  }
}
