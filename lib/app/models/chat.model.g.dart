// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return Chat(
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

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'atendente': instance.atendente,
      'motorista': instance.motorista,
      'unidade': instance.unidade,
      'concluido': instance.concluido,
      'datacriacao': instance.datacriacao?.toIso8601String(),
    };
