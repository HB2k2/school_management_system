import 'package:flutter/material.dart';
import 'package:state_school_management/common/appBar.dart';

import 'common/table.dart';

class statePage extends StatefulWidget {
  const statePage({super.key});

  @override
  State<statePage> createState() => _statePageState();
}

class _statePageState extends State<statePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withAlpha(30),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Schools in Nagaland'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 200),
                          child: Divider(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              'List of Schools in 11 Districts of Nagaland'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      icon: const Icon(Icons.house)),
                  const Text(
                    '   /   Schools in Nagaland',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            table(),
          ],
        ),
      ),
    );
  }
}
