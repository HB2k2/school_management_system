import 'package:flutter/material.dart';

import 'dropdown.dart';

Row searchBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: YourDropdownMenu(),
      ),
      SizedBox(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter Name or Location ...',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            ElevatedButton(onPressed: () {}, child: const Text('Find School')),
      )
    ],
  );
}
