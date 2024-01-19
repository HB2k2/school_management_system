import 'package:flutter/material.dart';
import 'abstract/card.dart';
import 'abstract/searchbar.dart';
import 'common/appBar.dart';
import 'common/footer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.withAlpha(30),
          ),
          child: Column(
            children: [
              searchBar(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [card(), card(), card()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [card(), card(), card()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [card(), card(), card()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [card(), card(), card()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [card(), card(), card()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [card(), card(), card()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [card(), card(), card()],
                ),
              ),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}

