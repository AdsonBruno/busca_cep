import 'package:busca_cep/bloc/generic_bloc.dart';
import 'package:busca_cep/models/user_cep.dart';
import 'package:busca_cep/services/cep_services.dart';

class CepBloc extends GenericBloc<UserCep> {
  getCep(cep) async {
    try {
      UserCep? cepResponse = await CepServices.getCep(cep);
      addObject(cepResponse!);
    } catch (e) {
      return null;
    }
  }
}
