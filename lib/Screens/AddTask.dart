import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dainik/main.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String addTask;

    return Container(
      color: Color(0Xff757575),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newValue) {
                    addTask = newValue;
                  },
                ),
              ),
              FlatButton(
                  height: 50.0,
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    Provider.of<TaskData>(context,listen: false).addTask(addTask);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  )),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
        ),
      ),
    );
  }
}
