import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_dto.freezed.dart';
part 'issue_dto.g.dart';

@freezed
abstract class IssueDto with _$IssueDto {
  const factory IssueDto({
    int number,
    String title,
    String body,
    String state,
    String html_url,
    int comments,
    Map<String, dynamic> pull_request,
    DateTime created_at,
    DateTime updated_at,
  }) = _IssueDto;

  factory IssueDto.fromJson(Map<String, dynamic> json) =>
      _$IssueDtoFromJson(json);
}
