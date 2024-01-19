import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'Sr.No',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'List of the districts in Nagaland',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Text('Schools in Dimapur'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('2')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Kiphire'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('3')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Kohima'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('4')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Longleng'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('5')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Mokokchung'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('6')),
              DataCell(
                  TextButton(onPressed: () {}, child: Text('Schools in Mon'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('7')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Peren'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('8')),
              DataCell(
                  TextButton(onPressed: () {}, child: Text('Schools in Phek'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('9')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Tuensang'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('10')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Wokha'))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('11')),
              DataCell(TextButton(
                  onPressed: () {}, child: Text('Schools in Zunheboto'))),
            ],
          ),
        ],
      ),
    );
  }
}
