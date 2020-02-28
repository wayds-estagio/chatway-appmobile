import 'package:json_annotation/json_annotation.dart';

part 'chat.model.g.dart';

@JsonSerializable()
class Chat {
  String id;
  String atendente;
  String motorista;
  String unidade;
  bool concluido;
  DateTime datacriacao;

  Chat({
    this.id,
    this.atendente,
    this.motorista,
    this.unidade,
    this.concluido,
    this.datacriacao,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);

  @override
  String toString() {
    return 'Chat{id: $id, atendente: $atendente, motorista: $motorista, unidade: $unidade, concluido: $concluido, datacriacao: $datacriacao}';
  }
}
