import 'package:json_annotation/json_annotation.dart';

part 'chat_server.model.g.dart';

@JsonSerializable()
class ChatServer {
  String id;
  String atendente;
  String motorista;
  String unidade;
  bool concluido;
  DateTime datacriacao;

  ChatServer({
    this.id,
    this.atendente,
    this.motorista,
    this.unidade,
    this.concluido,
    this.datacriacao,
  });

  factory ChatServer.fromJson(Map<String, dynamic> json) =>
      _$ChatServerFromJson(json);

  Map<String, dynamic> toJson() => _$ChatServerToJson(this);

  @override
  String toString() {
    return 'ChatServer{id: $id, atendente: $atendente, motorista: $motorista, unidade: $unidade, concluido: $concluido, datacriacao: $datacriacao}';
  }
}
