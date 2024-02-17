import 'package:desktop_todo_app_tut/helpers/objectbox_interface.dart';
import 'package:desktop_todo_app_tut/screens/home_screen.dart';
import 'package:flutter/material.dart';

late ObjectBox objectBox;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectBox = await ObjectBox.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
