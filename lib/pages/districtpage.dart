import 'package:flutter/material.dart';
import 'package:state_school_management/common/Tables.dart';
import 'package:state_school_management/common/appBar.dart';
import 'package:state_school_management/services/api.dart';
import 'package:state_school_management/model/block.dart';

class DistrictPage extends StatefulWidget {
  const DistrictPage({Key? key}) : super(key: key);

  @override
  _DistrictPageState createState() => _DistrictPageState();
}

class _DistrictPageState extends State<DistrictPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
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
                        child: Text('Schools in Dimapur Nagaland'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 700),
                        child: Divider(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('List of Blocks of Dimapur District'),
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
                  icon: Icon(Icons.house),
                ),
                Text("  /  "),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text("Nagaland"),
                ),
                const Text(
                  '   /   Schools in Dimapur',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: FutureBuilder(
                future: Api.getBlock(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    List<Block>? bdata = snapshot.data as List<Block>?;
                    
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: bdata?.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {},
                          tileColor: index % 2 == 0 ? Colors.grey[300] : Colors.grey[200],
                          leading: Text("${(index+1)}",style: const TextStyle(fontSize: 16, color: Colors.black),),
                          title: Text("${bdata?[index].name}", style: const TextStyle(fontSize: 16, color: Colors.blue),),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
