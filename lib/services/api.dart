import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:state_school_management/model/block.dart';

class Api {
  static const baseUrl = "http://localhost:2000/api/";

  static addblock(Map bdata) async {
    var url = Uri.parse("${baseUrl}nagaland/dimapur/push");

    try {
      final res = await http.post(url, body: bdata);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {}
    } catch (e) {
      debugPrint(e.toString());
    }

  }

  //get method
  static getBlock() async{
    List<Block> blocks = [];

    var url = Uri.parse("${baseUrl}nagaland/dimapur/get");

    try {

      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        data.forEach((value) => {
          blocks.add(Block(name: value['name']))
        });

        return blocks;
        
      } else {
        return [];
      }
    } catch (e) {
      debugPrint(e.toString());
    }

  }
}
