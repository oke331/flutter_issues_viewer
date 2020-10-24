import 'package:flutter/material.dart';

class SpecificationButton extends StatelessWidget {
  const SpecificationButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('仕様はここをタップ'),
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.lightBlueAccent,
          onPrimary: Colors.white,
          elevation: 5),
      onPressed: () => _dialog(context),
    );
  }

  void _dialog(BuildContext context) {
    showDialog<void>(
        context: context,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: AlertDialog(
            title: const Text(
              '仕様',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            content: const SingleChildScrollView(
              child: Text(
                '''
ご確認いただき、誠にありがとうございます。
仕様について簡単に記します。
  
●基本機能として定められている「ラベルごとのIssueをリスト表示できる」機能の実装。

●pullRefresh機能を追加。

●はじめは20件読み込み、その後スクロールごとに20件ずつ読み込む。

●リストは作成日時の降順で、openとclosed両方のissueを表示する様にしている。

●アイコンについて、openのときは緑マーク、closeしたissueは赤いチェックとなる。

●issueのカードをタップすると、webページに遷移する様にしている。

''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('閉じる'))
            ],
          ),
        ));
  }
}
