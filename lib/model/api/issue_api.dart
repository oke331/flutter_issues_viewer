import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:http/http.dart' as http;

class IssueApi {
  IssueApi({@required String label}) : _label = label;
  static const String _url =
      'https://api.github.com/repos/flutter/flutter/issues';

  final String _label;

  Future<List<IssueDto>> fetch({@required int lastPage}) async {
    try {
      final response = await http
          .get(
              '$_url?state=all&sort=created&direction=desc&page=${lastPage + 1}&per_page=20${_label.isNotEmpty ? '&labels=$_label' : ''}')
          .timeout(const Duration(seconds: 10), onTimeout: _timeout);
      if (response.statusCode == 200) {
        final list = <IssueDto>[];
        final decoded = await json.decode(response.body) as List<dynamic>;
        for (final item in decoded) {
          list.add(IssueDto.fromJson(item as Map<String, dynamic>));
        }
        return list;
      } else {
        throw Exception(
            'アクセスに失敗しました。 response code:${response.statusCode}  reason:${response.reasonPhrase}');
      }
    } on Exception catch (e) {
      rethrow;
    }
  }

  FutureOr<http.Response> _timeout() async {
    throw TimeoutException('タイムアウトが発生しました。');
  }
}
