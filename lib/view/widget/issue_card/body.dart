import 'package:flutter/material.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:provider/provider.dart';

class IssueCardBody extends StatelessWidget {
  const IssueCardBody();

  @override
  Widget build(BuildContext context) {
    final body = context.select((IssueDto value) => value.body);

    return Container(
      width: double.infinity,
      color: Colors.cyan[50],
      padding: const EdgeInsets.all(10),
      child: Text(
        body,
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
