// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:template_web/abstracts/models/abstract_entity_model.dart';

part 'imagem_model.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class Imagem extends AbstractEntity {
  int? totalResults;
  int? page;
  int? perPage;
  List<Photos>? photos;
  String? nextPage;
  Imagem({
    this.totalResults,
    this.page,
    this.perPage,
    this.photos,
    this.nextPage,
  });

  factory Imagem.fromJson(Map<String, dynamic> json) => _$ImagemFromJson(json);

  Map<String, dynamic> toJson() => _$ImagemToJson(this);
}

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class Photos {
  int? id;
  int? width;
  int? height;
  String? url;
  String? photographer;
  String? photographerUrl;
  int? photographerId;
  String? avgColor;
  Src? src;
  bool? liked;
  String? alt;
  Photos({
    this.id,
    this.width,
    this.height,
    this.url,
    this.photographer,
    this.photographerUrl,
    this.photographerId,
    this.avgColor,
    this.src,
    this.liked,
    this.alt,
  });

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosToJson(this);
}

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class Src {
  String? original;
  String? large2x;
  String? large;
  String? medium;
  String? small;
  String? portrait;
  String? landscape;
  String? tiny;
  Src({
    this.original,
    this.large2x,
    this.large,
    this.medium,
    this.small,
    this.portrait,
    this.landscape,
    this.tiny,
  });

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);

  Map<String, dynamic> toJson() => _$SrcToJson(this);
}
