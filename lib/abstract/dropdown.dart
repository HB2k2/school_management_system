import 'package:flutter/material.dart';

class YourDropdownMenu extends StatefulWidget {
  const YourDropdownMenu({super.key});

  @override
  _YourDropdownMenuState createState() => _YourDropdownMenuState();
}

class _YourDropdownMenuState extends State<YourDropdownMenu> {
  String selectedItem = 'Andaman and Nicobar Islands';

  @override
  Widget build(BuildContext context) {
    List<String> itemList = ['Andaman and Nicobar Islands', 'Item 2', 'Item 3'];

    return DropdownButton<String>(
      value: selectedItem,
      onChanged: (String? value) {
        setState(() {
          selectedItem = value!;
        });
      },
      items: itemList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}