import 'package:flutter/cupertino.dart';

import '../models/task_model.dart';

class HomepageController {
  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDetailsController = TextEditingController();

  List<TaskModel> taskList = [
    TaskModel(taskName: 'demo task', taskDetails: 'Hello world\n', isComplete: true),
    TaskModel(taskName: 'demo task', taskDetails: '', isComplete: false),
    TaskModel(taskName: 'demo task', taskDetails: '', isComplete: true),
  ];

  void addNewTask() {
    taskList.add(TaskModel(
        taskName: taskTitleController.text,
        taskDetails: taskDetailsController.text,
        isComplete: false));
    taskTitleController.clear();
    taskDetailsController.clear();
  }

  void markComplete(int index) {
    taskList[index].isComplete = !taskList[index].isComplete;
  }
}
