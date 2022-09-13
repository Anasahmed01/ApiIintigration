import 'package:apimodel/services/service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Homeapp extends StatefulWidget {
  const Homeapp({super.key});

  @override
  State<Homeapp> createState() => _HomeappState();
}

class _HomeappState extends State<Homeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: FutureBuilder(
          future: getuser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${snapshot.data[index].name}"),
                      subtitle: Text("${snapshot.data[index].phone}"),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    ));
  }
}
