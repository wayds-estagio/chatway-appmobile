import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class User {
  String id;
  String nome;
  String login;
  String senha;
  String unidade;
  String empresa;
  String tipo;
  String dispositivo;
  DateTime datacriacao;

  User({
    this.id,
    this.nome,
    this.login,
    this.senha,
    this.unidade,
    this.empresa,
    this.tipo,
    this.dispositivo,
    this.datacriacao,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return 'User{id: $id, nome: $nome, login: $login, senha: $senha, unidade: $unidade, empresa: $empresa, tipo: $tipo, dispositivo: $dispositivo, datacriacao: $datacriacao}';
  }
}
