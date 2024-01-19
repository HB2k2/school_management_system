import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    title: const Text('Probit Plus'),
    // leading: TextButton(onPressed: () {}, child: const Text('Probit Plus')),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: () {}, child: const Text('Home',style:TextStyle(color: Color(0XFFFFFFFF)),)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: () {}, child: const Text('CBSE Schools',style:TextStyle(color: Color(0XFFFFFFFF)))),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: () {}, child: const Text('Who we are',style:TextStyle(color: Color(0XFFFFFFFF)))),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(onPressed: () {}, child: const Text('My profile',style:TextStyle(color: Color(0XFFFFFFFF)))),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(onPressed: () {}, child: Text('+ List Schools')),
      )
    ],
    // backgroundColor: Color(0xFFFFFFFF),
    // backgroundColor: Colors.greenAccent[400],
  );
}
