import '../models/task_model.dart';

class HomepageController{
  List<TaskModel> taskList = [
    TaskModel(taskName: 'demo task', taskDetails: 'Hello world\n', isComplete: false),
    TaskModel(taskName: 'demo task', taskDetails: '', isComplete: false),
    TaskModel(taskName: 'demo task', taskDetails: '', isComplete: false),
  ];
}