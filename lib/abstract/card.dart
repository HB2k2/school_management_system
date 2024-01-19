import 'package:flutter/material.dart';

class card extends StatelessWidget {
  // const card({
  //   // Key? key, required state,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.pushNamed(context, '/second');
          debugPrint('Card tapped.');
        },
        child: SizedBox(
            width: 300,
            height: 100,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.25,
                    child: Image.asset('assets/school.jpg',width: 100,height: 100,),
                    // decoration: BoxDecoration(color: Colors.greenAccent),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Nagaland'),
                        SizedBox(height: 20),
                        Text('Schools in Nagaland')
                      ],
                    ),
                    // decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
