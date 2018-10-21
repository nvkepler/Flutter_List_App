import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final speakers = [
  {"name": "Pawan", "claps": 0},
  {"name": "Dhrumil", "claps": 0},
  {"name": "Kamal", "claps": 0},
  {"name": "Vrijraj", "claps": 0}
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Speaker List",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speaker List"),
      ),
      body: ListView(

          children: speakers.map((speaker) {
            return Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
                child: ListTile (
                title: Text(speaker["name"]),
                  subtitle: Text("This is for Discription"),
                  leading: Icon(Icons.account_circle),
                  trailing: Text(speaker["claps"].toString()),
                  onTap: (){
                    print(speaker);
                  },
              ),
              ),
            );
          }).toList()),
    );
  }
}