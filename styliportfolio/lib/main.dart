import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'Pages/lebenslauf_page.dart';
import 'Pages/faehigkeiten_page.dart';
import 'Pages/uebermich_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stylianos Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/resume': (context) => ResumePage(),
        '/skills': (context) => SkillsPage(),
      },
    );
  }
}
