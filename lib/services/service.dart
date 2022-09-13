import 'dart:convert';

import 'package:apimodel/models/model.dart';
import 'package:http/http.dart' as http;

getuser() async {
  var Url = Uri.parse("https://jsonplaceholder.typicode.com/users");
  var response = await http.get(Url);
  var data = jsonDecode(response.body);
  List<apimodel> userlist = [];

  for (var i in data) {
    userlist.add(apimodel.fromJson(i));
  }
  return userlist;
}
