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
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.purple.shade700,
      ),
    );
  }
}
