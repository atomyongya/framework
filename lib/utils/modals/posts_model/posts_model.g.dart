// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsModelImpl _$$PostsModelImplFromJson(Map<String, dynamic> json) =>
    _$PostsModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => PostData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostsModelImplToJson(_$PostsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PostDataImpl _$$PostDataImplFromJson(Map<String, dynamic> json) =>
    _$PostDataImpl(
      id: json['id'] as int?,
      userId: json['userId'] as int,
      message: json['message'] as String?,
      medias: (json['medias'] as List<dynamic>?)
          ?.map((e) => MediaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberOfViews: (json['numberOfViews'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$PostDataImplToJson(_$PostDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'message': instance.message,
      'medias': instance.medias,
      'numberOfViews': instance.numberOfViews,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
