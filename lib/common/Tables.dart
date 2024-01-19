import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  TableWidget({
    Key? key, required this.index, required this.block
  }) : super(key: key);

  int index;
  String block;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Sr.No',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'List of the districts in Nagaland',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: List<DataRow>.generate(
          index,
          (i) => DataRow(
            cells: <DataCell>[
              DataCell(Text('${i + 1}')),
              DataCell(
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text('Schools in Dimapur'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
