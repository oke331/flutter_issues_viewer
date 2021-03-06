import 'package:flutter/material.dart';
import 'package:flutter_issues/view/widget/specification_button.dart';
import 'package:flutter_issues/view/widget/tab_widget.dart';

class Home extends StatelessWidget {
  final _tab = <Tab>[
    const Tab(text: '全て'),
    const Tab(text: 'p: webview'),
    const Tab(text: 'p: shared_preferences'),
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
          title: const SpecificationButton(),
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
}
