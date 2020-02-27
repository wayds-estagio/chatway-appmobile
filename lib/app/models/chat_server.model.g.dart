// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_server.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatServer _$ChatServerFromJson(Map<String, dynamic> json) {
  return ChatServer(
    id: json['id'] as String,
    atendente: json['atendente'] as String,
    motorista: json['motorista'] as String,
    unidade: json['unidade'] as String,
    concluido: json['concluido'] as bool,
    datacriacao: json['datacriacao'] == null
        ? null
        : DateTime.parse(json['datacriacao'] as String),
  );
}

Map<String, dynamic> _$ChatServerToJson(ChatServer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'atendente': instance.atendente,
      'motorista': instance.motorista,
      'unidade': instance.unidade,
      'concluido': instance.concluido,
      'datacriacao': instance.datacriacao?.toIso8601String(),
    };
