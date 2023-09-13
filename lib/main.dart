import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/categories.dart';
import 'package:flutter_application_5/screens/delivery_man_list.dart';
import 'package:flutter_application_5/screens/delivery_man_page.dart';
import 'package:flutter_application_5/screens/profile.dart';
import 'package:flutter_application_5/screens/valley.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: delivery(),
    );
  }
}
