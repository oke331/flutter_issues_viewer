// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssueDto _$_$_IssueDtoFromJson(Map<String, dynamic> json) {
  return _$_IssueDto(
    number: json['number'] as int,
    title: json['title'] as String,
    body: json['body'] as String,
    state: json['state'] as String,
    html_url: json['html_url'] as String,
    comments: json['comments'] as int,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$_$_IssueDtoToJson(_$_IssueDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.title,
      'body': instance.body,
      'state': instance.state,
      'html_url': instance.html_url,
      'comments': instance.comments,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
