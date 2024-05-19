import 'package:flutter/material.dart';
import 'package:test_version_quiz/helper/quiz_db_helper.dart';
import 'package:test_version_quiz/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter has initialized
  await QuizDatabaseHelper().initDatabase(); // Initialize the database
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Quiz App',
      home: HomeScreen()
    );
  }
}
