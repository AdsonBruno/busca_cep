import 'dart:convert';
import 'package:busca_cep/models/user_cep.dart';
import 'package:http/http.dart' as http;

class CepServices {
  static Future<UserCep> getCep(String cep) async {
    Uri url = Uri.https("viacep.com.br", "/ws/$cep/json");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      UserCep result = UserCep.fromJson(jsonDecode(response.body));
      return result;
    } else {
      throw const FormatException('Erro! CEP não existe');
    }
  }
}
