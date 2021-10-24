import 'package:busca_cep/bloc/cep_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextCep extends StatelessWidget {
  final CepBloc _cepBloc;
  final String _name;
  final TextEditingController _controller;

  const TextCep(
    this._cepBloc,
    this._name,
    this._controller, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var maskFormatter = MaskTextInputFormatter(
    //   mask: '#####-###',
    //   filter: {"#": RegExp(r'[0-9]')},
    // );

    return TextField(
      controller: _controller,
      // maxLength: 9,
      onChanged: (cep) async {
        await _cepBloc.getCep(cep);
      },
      decoration: InputDecoration(
        labelText: _name,
        labelStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(1)),
      ),
      style: const TextStyle(color: Colors.blue, fontSize: 25.0),
      keyboardType: TextInputType.number,
      // inputFormatters: [maskFormatter],
    );
  }
}
