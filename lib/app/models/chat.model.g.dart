// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return Chat(
    id: json['id'] as String,
    atendente: json['atendente'] as String,
    atendenteId: json['atendenteId'] as String,
    motorista: json['motorista'] as String,
    motoristaId: json['motoristaId'] as String,
    unidade: json['unidade'] as String,
    caminhoImage: json['caminhoImage'] as String,
    concluido: json['concluido'] as bool,
    datacriacao: json['datacriacao'] == null
        ? null
        : DateTime.parse(json['datacriacao'] as String),
    mensagens: (json['mensagens'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'atendente': instance.atendente,
      'atendenteId': instance.atendenteId,
      'motorista': instance.motorista,
      'motoristaId': instance.motoristaId,
      'unidade': instance.unidade,
      'caminhoImage': instance.caminhoImage,
      'concluido': instance.concluido,
      'datacriacao': instance.datacriacao?.toIso8601String(),
      'mensagens': instance.mensagens,
    };
