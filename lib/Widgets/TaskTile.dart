import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String tittle;
  final bool toggle;
  final Function callBack;
  final Function deleteTasks;
  TaskTile(this.tittle, this.toggle, this.callBack,this.deleteTasks);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tittle,
        style: TextStyle(
          decoration: toggle ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(value: toggle, onChanged: callBack),
      onLongPress: deleteTasks,
    );
  }
}
