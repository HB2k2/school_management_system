import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  const footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withAlpha(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'Schools.org.in is not affiliated with any government agency or educational institution. We are an independent platform providing a space for users to submit and access school listing data. While we strive for accuracy and reliability, please be aware that the information on our website is user-generated and may not always reflect the most up-to-date or accurate details about schools. Users are encouraged to verify information independently and use their discretion when making decisions based on the data provided on our website. We do not assume responsibility for any discrepancies or inaccuracies in the listings.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '© Schools.org.in 2023 All rights Reserved | Hosting from Free Hosting Guide',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),

      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(child: Text('fghjk'),
      //     decoration: BoxDecoration(color: Colors.greenAccent),),
      //     Container(child: Text('fghjk'),
      //     decoration: const BoxDecoration(color: Color.fromARGB(255, 141, 105, 240)),),
      //     Container(child: Text('fghjk'),
      //     decoration: BoxDecoration(color: Color.fromARGB(255, 240, 105, 105)),),
      //     Container(child: Text('fghjk'),
      //     decoration: BoxDecoration(color: Color.fromARGB(255, 229, 240, 105)),)
      //   ],
      // ),
    );
  }
}
