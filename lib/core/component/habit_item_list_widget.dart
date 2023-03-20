import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:habit_list/core/component/habit_item_widget.dart';
import 'package:habit_list/core/model/habit_domain.dart';

class HabitItemListWidget extends StatefulWidget {
  final List<HabitDomain> habitListItem;
  const HabitItemListWidget({super.key, required this.habitListItem});

  @override
  State<HabitItemListWidget> createState() => _HabitItemListWidgetState();
}

class _HabitItemListWidgetState extends State<HabitItemListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: widget.habitListItem.length,
        itemBuilder: (context, index) {
          final habitItem = widget.habitListItem[index];
          return HabitItemWidget(habitItem: habitItem);
        },
      ),
    );
  }
}
