import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_dto.freezed.dart';
part 'issue_dto.g.dart';

@freezed
abstract class IssueDto with _$IssueDto {
  const factory IssueDto({
    int id,
    String title,
    String body,
    String state,
    List<Map<String, dynamic>> labels,
    DateTime created_at,
    DateTime updated_at,
    DateTime closed_at,
  }) = _IssueDto;

  factory IssueDto.fromJson(Map<String, dynamic> json) =>
      _$IssueDtoFromJson(json);
}
