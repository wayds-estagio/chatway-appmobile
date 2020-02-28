import 'package:chatway/app/models/user.model.dart';

class Consts {
  static String baseURL = 'http://192.168.1.159:5000';

  static final user = User(
    id: "5e5900b183d42a17ec51e4b8",
    nome: "Motorista_01",
    login: "Motorista_01",
    senha: "123",
    unidade: "5e42b90815d4731db8fb3e31",
    empresa: "5e42ae141b75c2011c43df00",
    tipo: "Motorista",
    dispositivo: "Dispositivo_01",
    datacriacao: DateTime.parse("2020-02-28T11:59:44.975Z"),
  );

  static final userAtendente = User(
    id: "5e5918e10a90703270a83dc1",
    nome: "Atendente_01",
    login: "Atendente_01",
    senha: "123",
    unidade: "5e42b90815d4731db8fb3e31",
    empresa: "5e42ae141b75c2011c43df00",
    dispositivo: null,
    tipo: "Atendente",
    datacriacao: DateTime.parse("2020-02-28T11:59:44.975Z"),
  );
}
