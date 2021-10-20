import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextCep extends StatelessWidget {
  const TextCep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
      mask: '#####-###',
      filter: {"#": RegExp(r'[0-9]')},
    );

    return TextField(
      controller: null,
      maxLength: 9,
      onChanged: null,
      decoration: InputDecoration(
        labelText: "CEP",
        labelStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(1)),
        counterText: '',
      ),
      style: const TextStyle(color: Colors.blue, fontSize: 25.0),
      keyboardType: TextInputType.number,
      inputFormatters: [maskFormatter],
    );
  }
}
