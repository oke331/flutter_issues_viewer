import 'package:flutter/material.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:flutter_issues/view/widget/issue_card/issue_card.dart';
import 'package:flutter_issues/view/widget/loading.dart';
import 'package:flutter_issues/viewmodel/issue_state.dart';
import 'package:provider/provider.dart';

class IssueList extends StatelessWidget {
  const IssueList(
      {@required List<IssueDto> issueDtoList,
      @required bool isLoading,
      @required bool init,
      @required Future<void> Function() pullRefresh})
      : _issueDtoList = issueDtoList,
        _isLoading = isLoading,
        _init = init,
        _pullRefresh = pullRefresh;

  final List<IssueDto> _issueDtoList;
  final bool _isLoading;
  final bool _init;
  final Future<void> Function() _pullRefresh;

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

    return Stack(
      alignment: Alignment.center,
      children: [
        RefreshIndicator(
          onRefresh: () async => _pullRefresh(),
          child: ListView.builder(
              controller: context.watch<IssueStateNotifier>().scrollController,
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
}
