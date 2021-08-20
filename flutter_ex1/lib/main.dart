import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyHomePage(),
));

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    child: Text('$index'),
                    color: Colors.blue,
                  ),
                  Divider(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
