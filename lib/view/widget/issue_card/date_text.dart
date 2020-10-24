import 'package:flutter/material.dart';

class IssueCardDateText extends StatelessWidget {
  const IssueCardDateText({@required String text}) : _text = text;

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: const TextStyle(color: Colors.grey),
    );
  }
}
