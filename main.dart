import 'package:flutter/material.dart';
import 'helpers/database_helper.dart';
import 'screens/home_screen.dart';
import 'screens/add_person_screen.dart';
import 'screens/edit_person_screen.dart';
import 'screens/view_person_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper().initDatabase();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/add_person': (context) => AddPersonScreen(),
        '/edit_person': (context) => EditPersonScreen(),
        '/view_person': (context) => ViewPersonScreen(),
      },
    );
  }
}
