import 'package:flutter/material.dart';
import 'package:state_school_management/pages/districtpage.dart';
import 'package:state_school_management/statepage.dart';
import 'Home.dart';

void main() {
  // setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/second': (context) => const statePage(),
        '/third' :(context) => const DistrictPage(),
      },
      title: 'EduMitra',
      // theme: ThemeData(
        // primarySwatch: Colors.grey,
      // ),
      // home: const Home(),
    );
  }
}