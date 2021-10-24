import 'package:busca_cep/bloc/cep_bloc.dart';
import 'package:busca_cep/models/user_cep.dart';
import 'package:busca_cep/widgets/text_cep_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CepBloc _cepBloc = CepBloc(); //consome api
  final _cepController = TextEditingController();

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
          children: <Widget>[
            const Icon(
              Icons.not_listed_location,
              size: 150,
              color: Colors.blue,
            ),
            SizedBox(
              width: 350,
              child: TextCep(_cepBloc, 'CEP', _cepController),
            ),
            const Divider(),
            StreamBuilder<UserCep>(
              stream: _cepBloc.streamCepBloc,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (_cepController.text.length != 8) {
                  return const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  );
                }
                if (!snapshot.hasData) {
                  return const Text(
                    'Erro! CEP não encontrado',
                    style: TextStyle(fontSize: 15.0),
                  );
                }

                return SingleChildScrollView(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      const Divider(),
                      Text('Logradouro: ${snapshot.data.address.toString()}'),
                      const Divider(),
                      Text('Bairro: ${snapshot.data.district.toString()}'),
                      const Divider(),
                      Text('Localidade: ${snapshot.data.location.toString()}'),
                      const Divider(),
                      Text('UF: ${snapshot.data.uf.toString()}'),
                      const Divider(),
                      Text('DDD: ${snapshot.data.ddd.toString()}'),
                    ],
                  ),
                );
                // throw '';
              },
            )
          ],
        ),
      ),
    );
  }
}
