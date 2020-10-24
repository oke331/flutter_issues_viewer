import 'package:flutter/material.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:flutter_issues/view/widget/issue_card/date_text.dart';
import 'package:intl/date_symbol_data_local.dart';
import "package:intl/intl.dart";
import 'package:provider/provider.dart';

class IssueCardDate extends StatelessWidget {
  const IssueCardDate();

  @override
  Widget build(BuildContext context) {
    final created_at =
        _format(context.select((IssueDto value) => value.created_at));
    final updated_at =
        _format(context.select((IssueDto value) => value.updated_at));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IssueCardDateText(text: '作成日時：$created_at'),
        IssueCardDateText(text: '更新日時：$updated_at'),
      ],
    );
  }

  String _format(DateTime dateTime) {
    if (dateTime == null) return null;
    initializeDateFormatting('ja');

    final formatter = DateFormat('yyyy/MM/dd(E) HH:mm', 'ja_JP');
    final formatted = formatter.format(dateTime.toLocal()); // DateからString
    return formatted;
  }
}
