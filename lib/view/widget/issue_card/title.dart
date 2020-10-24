import 'package:flutter/material.dart';
import 'package:flutter_issues/model/constant.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:provider/provider.dart';

class IssueCardTitle extends StatelessWidget {
  const IssueCardTitle();

  @override
  Widget build(BuildContext context) {
    final title = context.select((IssueDto value) => value.title);
    final state = context.select((IssueDto value) => value.state);

    return Row(
      children: [
        state == Constant.issueStateClose
            ? const Icon(Icons.check_circle_outline, color: Colors.red)
            : const Icon(Icons.error_outline, color: Colors.green),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
