// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String,
    nome: json['nome'] as String,
    login: json['login'] as String,
    senha: json['senha'] as String,
    unidade: json['unidade'] as String,
    empresa: json['empresa'] as String,
    tipo: json['tipo'] as String,
    dispositivo: json['dispositivo'] as String,
    datacriacao: json['datacriacao'] == null
        ? null
        : DateTime.parse(json['datacriacao'] as String),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'login': instance.login,
      'senha': instance.senha,
      'unidade': instance.unidade,
      'empresa': instance.empresa,
      'tipo': instance.tipo,
      'dispositivo': instance.dispositivo,
      'datacriacao': instance.datacriacao?.toIso8601String(),
    };
