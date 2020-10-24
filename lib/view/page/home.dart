import 'package:flutter/material.dart';
import 'package:flutter_issues/view/widget/tab_widget.dart';

class Home extends StatelessWidget {
  final _tab = <Tab>[
    const Tab(text: '全て'),
    const Tab(text: 'p: webview'),
    const Tab(text: 'p: shared_preference'),
    const Tab(text: 'waiting for customer response'),
    const Tab(text: 'severe: new feature'),
    const Tab(text: 'p: share'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: ElevatedButton(
            child: const Text('仕様はここをタップ'),
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Colors.lightBlueAccent,
                onPrimary: Colors.white,
                elevation: 5),
            onPressed: () => _dialog(context),
          ),
          bottom: TabBar(
            tabs: _tab,
            isScrollable: true,
          ),
        ),
        body: const TabBarView(
          children: [
            TabWidget(label: ''),
            TabWidget(label: 'p: webview'),
            TabWidget(label: 'p: shared_preferences'),
            TabWidget(label: 'waiting for customer response'),
            TabWidget(label: 'severe: new feature'),
            TabWidget(label: 'p: share'),
          ],
        ),
      ),
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

●issueのカードをタップすると、webページに遷移する様にしている。''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            actions: [
              FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('閉じる'))
            ],
          ),
        ));
  }
}
