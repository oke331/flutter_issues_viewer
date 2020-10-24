import 'package:flutter/material.dart';
import 'package:flutter_issues/main.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:flutter_issues/view/widget/issue_card/body.dart';
import 'package:flutter_issues/view/widget/issue_card/date.dart';
import 'package:flutter_issues/view/widget/issue_card/title.dart';
import 'package:flutter_issues/view/widget/issue_card/top.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class IssueCard extends StatelessWidget {
  const IssueCard();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
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
      ),
      onTap: () => launchUrl(context),
    );
  }

  Future<void> launchUrl(BuildContext context) async {
    final url = context.read<IssueDto>().html_url;
    try {
      await launch(url);
    } on Exception catch (e) {
      await Fluttertoast.showToast(msg: 'URLの起動に失敗しました。');
      logger.d(e.toString());
    }
  }
}
