import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double width = 150;
  double height = 150;
  Color color = Colors.red;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => setState(() {
      width = 300;
      height = 300;
      color = Colors.green;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
          ),
          duration: const Duration(seconds: 3),
          curve: Curves.linear,
        ),
      ),
    );
  }
}
