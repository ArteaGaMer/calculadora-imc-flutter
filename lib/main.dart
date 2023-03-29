import 'package:flutter/material.dart';
import 'inicio.dart';

main() => runApp(Ejem22());

class Ejem22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 35, 69, 125),
      ),
      home: Inicio(),
    );
  }
}

