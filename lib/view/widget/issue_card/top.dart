import 'package:flutter/material.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:provider/provider.dart';

class IssueCardTop extends StatelessWidget {
  const IssueCardTop();

  @override
  Widget build(BuildContext context) {
    final id = context.select((IssueDto value) => value.id);

    return Text('No.$id');
  }
}
