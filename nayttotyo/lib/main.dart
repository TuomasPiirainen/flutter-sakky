import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Alusta Firebase
  runApp(const MyApp());
}

class Task {
  final String title;
  final String description;
  final DateTime dueDate;
  final bool isCompleted;

  Task(
      {required this.title,
      required this.description,
      required this.dueDate,
      this.isCompleted = false});
}

class TaskList {
  final String name;
  final List<Task> tasks;

  TaskList({required this.name, this.tasks = const []});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskListsScreen(),
    );
  }
}

class TaskListsScreen extends StatelessWidget {
  const TaskListsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tehtävälistat'),
      ),
      body: const Center(
        child: Text('Tässä näkyvät tehtävälistat ja niiden tehtävät.'),
      ),
    );
  }
}

class TaskListScreen extends StatelessWidget {
  final TaskList taskList;

  const TaskListScreen({super.key, required this.taskList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(taskList.name),
      ),
      body: Column(
        children: [
          const TaskForm(), // Widget lisätään myöhemmin
          TaskListWidget(taskList: taskList),
        ],
      ),
    );
  }
}

class TaskForm extends StatelessWidget {
  const TaskForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Otsikko'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Kuvaus'),
          ),
          // Lisää kentät määräajalle ja prioriteetille
          ElevatedButton(
            onPressed: () {
              // Tallenna tehtävä Firebaseen
            },
            child: const Text('Lisää tehtävä'),
          ),
        ],
      ),
    );
  }
}

class TaskListWidget extends StatelessWidget {
  final TaskList taskList;

  const TaskListWidget({required this.taskList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.tasks.length,
      itemBuilder: (context, index) {
        final task = taskList.tasks[index];
        return ListTile(
          title: Text(task.title),
          subtitle: Text(task.description),
          trailing: Checkbox(
            value: task.isCompleted,
            onChanged: (newValue) {
              // Päivitä tehtävän tila Firebaseen
            },
          ),
        );
      },
    );
  }
}
