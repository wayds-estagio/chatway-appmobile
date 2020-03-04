import 'package:chatway/app/models/user.model.dart';

class Consts {
  static String baseURL = 'http://192.168.1.6:5000';

  static final user = User(
    id: "5e5e530aa1a94923c47e710d",
    nome: "Motorista_01",
    login: "Motorista_01",
    senha: "123",
    unidade: "5e5e52eba1a94923c47e710c",
    empresa: "5e5e52b7a1a94923c47e710b",
    tipo: "Motorista",
    dispositivo: "Dispositivo_01",
    datacriacao: DateTime.parse("2020-02-28T11:59:44.975Z"),
  );

  static final userAtendente = User(
    id: "5e5918e10a90703270a83dc1",
    nome: "Atendente_01",
    login: "Atendente_01",
    senha: "123",
    unidade: "5e5e52eba1a94923c47e710c",
    empresa: "5e5e52b7a1a94923c47e710b",
    dispositivo: null,
    tipo: "Atendente",
    datacriacao: DateTime.parse("2020-02-28T11:59:44.975Z"),
  );
}
