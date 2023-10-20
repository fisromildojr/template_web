// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Imagem _$ImagemFromJson(Map<String, dynamic> json) => Imagem(
      totalResults: json['totalResults'] as int?,
      page: json['page'] as int?,
      perPage: json['perPage'] as int?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photos.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPage: json['nextPage'] as String?,
    )
      ..id = json['id'] as int?
      ..nome = json['nome'] as String?
      ..dataCadastro = json['dataCadastro'] == null
          ? null
          : DateTime.parse(json['dataCadastro'] as String)
      ..dataUpdate = json['dataUpdate'] == null
          ? null
          : DateTime.parse(json['dataUpdate'] as String);

Map<String, dynamic> _$ImagemToJson(Imagem instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'dataCadastro': instance.dataCadastro?.toIso8601String(),
      'dataUpdate': instance.dataUpdate?.toIso8601String(),
      'totalResults': instance.totalResults,
      'page': instance.page,
      'perPage': instance.perPage,
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'nextPage': instance.nextPage,
    };

Photos _$PhotosFromJson(Map<String, dynamic> json) => Photos(
      id: json['id'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      photographer: json['photographer'] as String?,
      photographerUrl: json['photographerUrl'] as String?,
      photographerId: json['photographerId'] as int?,
      avgColor: json['avgColor'] as String?,
      src: json['src'] == null
          ? null
          : Src.fromJson(json['src'] as Map<String, dynamic>),
      liked: json['liked'] as bool?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$PhotosToJson(Photos instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographerUrl': instance.photographerUrl,
      'photographerId': instance.photographerId,
      'avgColor': instance.avgColor,
      'src': instance.src?.toJson(),
      'liked': instance.liked,
      'alt': instance.alt,
    };

Src _$SrcFromJson(Map<String, dynamic> json) => Src(
      original: json['original'] as String?,
      large2x: json['large2x'] as String?,
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      small: json['small'] as String?,
      portrait: json['portrait'] as String?,
      landscape: json['landscape'] as String?,
      tiny: json['tiny'] as String?,
    );

Map<String, dynamic> _$SrcToJson(Src instance) => <String, dynamic>{
      'original': instance.original,
      'large2x': instance.large2x,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'portrait': instance.portrait,
      'landscape': instance.landscape,
      'tiny': instance.tiny,
    };
