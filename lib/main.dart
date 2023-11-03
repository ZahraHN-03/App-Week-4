import 'package:flutter/material.dart';
import 'package:todo_list/providers/tasks_provider.dart';
import 'package:todo_list/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => TasksProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task List',
      home: HomeScreen(),
    );
  }
}
