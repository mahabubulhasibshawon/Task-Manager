import 'package:flutter/cupertino.dart';

import '../models/task_model.dart';

class HomepageController {
  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDetailsController = TextEditingController();

  List<TaskModel> taskList = [
    TaskModel(
        taskName: 'demo task', taskDetails: 'Hello world\n', isComplete: false),
    TaskModel(taskName: 'demo task', taskDetails: '', isComplete: false),
    TaskModel(taskName: 'demo task', taskDetails: '', isComplete: false),
  ];

  void addNewTask() {
    taskList.add(TaskModel(
        taskName: taskDetailsController.text,
        taskDetails: taskDetailsController.text,
        isComplete: false));
  }
}
