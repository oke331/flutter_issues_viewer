import 'package:flutter/material.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:flutter_issues/view/widget/issue_card/issue_card.dart';
import 'package:flutter_issues/view/widget/loading.dart';
import 'package:provider/provider.dart';

class IssueList extends StatelessWidget {
  IssueList(
      {@required List<IssueDto> issueDtoList,
      @required bool isLoading,
      @required bool init,
      @required Future<void> Function() scrollCallback,
      @required Future<void> Function() pullRefresh})
      : _issueDtoList = issueDtoList,
        _isLoading = isLoading,
        _init = init,
        _scrollCallback = scrollCallback,
        _pullRefresh = pullRefresh;

  final List<IssueDto> _issueDtoList;
  final bool _isLoading;
  final bool _init;
  final Future<void> Function() _scrollCallback;
  final Future<void> Function() _pullRefresh;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // 初期化されるまでローディング画面表示
    if (!_init) {
      return const Center(child: Loading());
    }

    // 空の場合、その旨を表示
    if (_issueDtoList == null || _issueDtoList.isEmpty) {
      return Center(
          child: TextButton(
              onPressed: () async => _pullRefresh(),
              child: const Text('issueはありません。\n再読み込みはタップ！')));
    }

    // スクロールが最下部まで達したらロード開始
    _scrollController.addListener(() async {
      await _scrollListener(context);
    });

    return Stack(
      alignment: Alignment.center,
      children: [
        RefreshIndicator(
          onRefresh: () async => _pullRefresh(),
          child: ListView.builder(
              controller: _scrollController,
              itemCount: _issueDtoList.length,
              itemBuilder: (context, index) {
                return Provider.value(
                    value: _issueDtoList[index], child: const IssueCard());
              }),
        ),
        if (_isLoading)
          const Positioned(
            bottom: 30,
            child: Loading(),
          )
      ],
    );
  }

  Future<void> _scrollListener(BuildContext context) async {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      await _scrollCallback();
    }
  }
}
