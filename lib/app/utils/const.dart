import 'dart:math';

import 'package:chatway/app/models/user.model.dart';

class Consts {
  static String baseURL = 'http://192.168.1.102:5000';

  static final user = User(
    id: "UserID" + Random().nextInt(100).toString(),
    nome: "Motorista Test",
    login: "test@dev.com",
    senha: "123",
    unidade: "Unidade Test",
    empresa: "Empresa Test",
    tipo: "Motorista",
    dispositivo: "Dispositivo Test",
    datacriacao: DateTime.now(),
  );
}
