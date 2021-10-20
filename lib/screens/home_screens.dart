import 'package:busca_cep/widgets/text_cep_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('CEP'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Icon(
              Icons.not_listed_location,
              size: 150,
              color: Colors.blue,
            ),
            SizedBox(width: 350, child: TextCep()),
          ],
        ),
      ),
    );
  }
}
