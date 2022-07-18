// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddrInfoRequest _$AddrInfoRequestFromJson(Map<String, dynamic> json) =>
    AddrInfoRequest(
      json['service'] as String,
      json['request'] as String,
      json['size'] as String,
      json['page'] as String,
      json['query'] as String,
      json['type'] as String,
      json['category'] as String,
      json['bbox'] as String,
    );

Map<String, dynamic> _$AddrInfoRequestToJson(AddrInfoRequest instance) =>
    <String, dynamic>{
      'service': instance.service,
      'request': instance.request,
      'size': instance.size,
      'page': instance.page,
      'query': instance.query,
      'type': instance.type,
      'category': instance.category,
      'bbox': instance.bbox,
    };
