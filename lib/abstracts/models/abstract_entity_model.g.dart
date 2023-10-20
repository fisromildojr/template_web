// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_entity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbstractEntity _$AbstractEntityFromJson(Map<String, dynamic> json) =>
    AbstractEntity(
      id: json['id'] as int?,
      nome: json['nome'] as String?,
      dataCadastro: json['dataCadastro'] == null
          ? null
          : DateTime.parse(json['dataCadastro'] as String),
      dataUpdate: json['dataUpdate'] == null
          ? null
          : DateTime.parse(json['dataUpdate'] as String),
    );

Map<String, dynamic> _$AbstractEntityToJson(AbstractEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'dataCadastro': instance.dataCadastro?.toIso8601String(),
      'dataUpdate': instance.dataUpdate?.toIso8601String(),
    };
