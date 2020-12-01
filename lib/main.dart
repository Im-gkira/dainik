import 'package:dainik/Models/Tasks.dart';
import 'package:flutter/material.dart';
import 'package:dainik/Screens/TaskScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>TaskData(),
      child: MaterialApp(
        theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(
              Theme
                  .of(context)
                  .textTheme,
            )
        ),
        home: TaskScreen(),
      ),
    );
  }
}

class TaskData extends ChangeNotifier {
     List<Tasks> tasks = [
     ];

     void addTask(value){
       final task = Tasks(task: value);
       tasks.add(task);
       notifyListeners();
     }

     void toggling(Tasks tasks){
       tasks.isToggle();
       notifyListeners();
     }

     void deleteTask(Tasks task){
       tasks.remove(task);
       notifyListeners();
     }
}