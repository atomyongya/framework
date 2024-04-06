// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaModelsImpl _$$MediaModelsImplFromJson(Map<String, dynamic> json) =>
    _$MediaModelsImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => MediaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MediaModelsImplToJson(_$MediaModelsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$MediaDataImpl _$$MediaDataImplFromJson(Map<String, dynamic> json) =>
    _$MediaDataImpl(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$MediaDataImplToJson(_$MediaDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'thumbnail': instance.thumbnail,
    };
