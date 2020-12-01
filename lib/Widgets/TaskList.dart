import 'package:dainik/main.dart';
import 'package:flutter/material.dart';
import 'package:dainik/Widgets/TaskTile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          Provider.of<TaskData>(context,listen: false).tasks[index].task,
          Provider.of<TaskData>(context,listen: false).tasks[index].isDone,
          (newValue) {
            Provider.of<TaskData>(context,listen: false)
                .toggling(Provider.of<TaskData>(context,listen: false).tasks[index]);
          },
            (){
              Provider.of<TaskData>(context,listen: false).deleteTask(Provider.of<TaskData>(context,listen: false).tasks[index]);
            }
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
