import 'package:flutter/material.dart';
import 'package:task_manager/src/homepage_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = HomepageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
      ),
      
      body: ListView.builder(
          itemCount: controller.taskList.length,
          itemBuilder: (ctx, index){
        return ExpansionTile(
          title: Text(
              controller.taskList[index].taskName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.list_sharp),
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    controller.taskList[index].taskDetails,
                    style: const TextStyle(
                      fontSize: 16
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            )
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.purple.shade700,
      ),
    );
  }
}
