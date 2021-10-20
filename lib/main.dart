import 'package:flutter/material.dart';
import 'screens/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Busca Cep',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: Home(),
    );
  }
}
