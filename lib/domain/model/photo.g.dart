// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: (json['id'] as num).toInt(),
      tags: json['tags'] as String,
      largeImageURL: json['largeImageURL'] as String,
      views: (json['views'] as num).toInt(),
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tags': instance.tags,
      'largeImageURL': instance.largeImageURL,
      'views': instance.views,
    };
