import 'package:chatway/app/models/message.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat.model.g.dart';

@JsonSerializable()
class Chat {
  String id;
  String atendente;
  String atendenteId;
  String motorista;
  String motoristaId;
  String unidade;
  String caminhoImage;
  bool concluido;
  DateTime datacriacao;
  List<Message> mensagens;

  Chat({
    this.id,
    this.atendente,
    this.atendenteId,
    this.motorista,
    this.motoristaId,
    this.unidade,
    this.caminhoImage,
    this.concluido,
    this.datacriacao,
    this.mensagens,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);

  @override
  String toString() {
    return 'Chat{id: $id, atendente: $atendente, motorista: $motorista, unidade: $unidade, caminhoImage: $caminhoImage, concluido: $concluido, datacriacao: $datacriacao, mensagens: $mensagens}';
  }
}
