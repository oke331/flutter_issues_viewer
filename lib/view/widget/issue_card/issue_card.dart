import 'package:flutter/material.dart';
import 'package:flutter_issues/view/widget/issue_card/body.dart';
import 'package:flutter_issues/view/widget/issue_card/date.dart';
import 'package:flutter_issues/view/widget/issue_card/title.dart';
import 'package:flutter_issues/view/widget/issue_card/top.dart';

class IssueCard extends StatelessWidget {
  const IssueCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            IssueCardTop(),
            SizedBox(height: 10),
            IssueCardTitle(),
            SizedBox(height: 10),
            IssueCardBody(),
            SizedBox(height: 10),
            IssueCardDate(),
          ],
        ),
      ),
    );
  }
}
