import 'package:flutter/material.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:provider/provider.dart';

class IssueCardTop extends StatelessWidget {
  const IssueCardTop();

  @override
  Widget build(BuildContext context) {
    final number = context.select((IssueDto value) => value.number);
    final comments = context.select((IssueDto value) => value.comments);

    return Row(
      children: [
        Text('No.$number'),
        const SizedBox(width: 12),
        const Icon(
          Icons.comment,
          size: 15,
        ),
        const SizedBox(width: 3),
        Text(comments.toString()),
      ],
    );
  }
}
