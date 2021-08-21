import 'package:flutter/material.dart';

Widget myRow(String containerText) {
  return FractionallySizedBox(
    widthFactor: 1.0,
    child: Column(
      children: [
        Container(
          height: 50,
          color: Colors.white,
          child: Text('$containerText'),
        ),
        Divider(),
      ],
    ),
  );
}

void main() => runApp(MaterialApp(
  home: MyHomePage(),
));

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return myRow('${index}');
        },
      ),
    );
  }
}
