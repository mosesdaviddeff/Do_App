// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {

final String taskName;
final bool taskCompleted;
Function (bool?)? onChanged;
Function(BuildContext)? deleteFunction;


  TodoTile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: const Color.fromARGB(255, 218, 51, 51),
              label: "Delete",
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: Row(
            children: [
        
              //checkbox
              Checkbox(
                value: taskCompleted, 
                onChanged: onChanged,
                activeColor: Colors.black,
                ),
              
              //Task name
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleted 
                  ? TextDecoration.lineThrough 
                  : TextDecoration.none
                  ),
                ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.amber,
          borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}