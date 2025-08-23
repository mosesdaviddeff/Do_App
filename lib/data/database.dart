// ignore_for_file: unused_field, strict_top_level_inference

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Make App", false],
      ["Go To Gym", false],
    ];
  }
  //load the data from the data base
  void loadData (){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the data base
  void UpdateDataBase(){
    _myBox.put("TODOLIST", toDoList);
    
  }
}