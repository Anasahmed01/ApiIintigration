import 'dart:convert';

import 'package:apimodel/models/model.dart';
import 'package:http/http.dart' as http;

getuser() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
  var response = await http.get(url);
  var data = jsonDecode(response.body);
  List userlist = [];

  for (var i in data) {
    userlist.add(apimodel.fromJson(i));
  }
  return userlist;
}
