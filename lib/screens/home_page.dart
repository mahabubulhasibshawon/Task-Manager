import 'package:flutter/material.dart';
import '../src/homepage_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomepageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Manager',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: controller.taskList.length,
          itemBuilder: (ctx, index) {
            return InkWell(
              onLongPress: (){
                setState(() {
                  controller.markComplete(index);
                });
              },
              child: ExpansionTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      controller.taskList[index].taskName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    controller.taskList[index].isComplete ?
                    Icon(Icons.done,color: Colors.green,) : const SizedBox.shrink()
                  ],
                ),
                leading: const Icon(Icons.list_sharp),
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          controller.taskList[index].taskDetails,
                          style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: const Text(
                    'Add new Task',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: controller.taskTitleController,
                        decoration: const InputDecoration(
                            label: Text('Task Name'),
                            hintText: 'Name of the task'),
                      ),
                      TextField(
                        controller: controller.taskDetailsController,
                        decoration: const InputDecoration(
                            label: Text('Details'),
                            hintText: 'Type your task details'),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: (){
                          setState(() {
                            controller.addNewTask();
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Add',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ))
                  ],
                );
              });
        },
        backgroundColor: Colors.purple.shade700,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
