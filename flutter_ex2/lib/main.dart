import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FirstScreen(),
));

Route animatedRoute(Widget? page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page!,
    transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: TextButton(
          child: Text(
            'На второй экран',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () => Navigator.pushReplacement(
            context,
            animatedRoute(SecondScreen())
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: TextButton(
          child: Text(
            'На первый экран',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () => Navigator.pushReplacement(
              context,
              animatedRoute(FirstScreen())
          ),
        ),
      ),
    );
  }
}

