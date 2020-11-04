import 'package:flutter/material.dart';
import 'package:flutter_issues/model/api/issue_api.dart';
import 'package:flutter_issues/view/widget/issue_list.dart';
import 'package:flutter_issues/viewmodel/issue_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({@required String label}) : _label = label;

  final String _label;

  @override
  Widget build(BuildContext context) {
    return NoLoadWhenChangeTab(
      child: StateNotifierProvider<IssueStateNotifier, IssueState>(
        create: (context) => IssueStateNotifier(IssueApi(label: _label)),
        builder: (context, _) {
          final state = context.select((IssueState value) => value);
          return IssueList(
            issueDtoList: state.issueDtoList,
            init: state.init,
            isLoading: state.isLoading,
            pullRefresh: () async => _pullRefresh(context),
          );
        },
      ),
    );
  }

  Future<void> _pullRefresh(BuildContext context) async {
    await context.read<IssueStateNotifier>().refreshAndFetch();
  }
}

// タブ切り替え時のリロードを防ぐ
class NoLoadWhenChangeTab extends StatefulWidget {
  NoLoadWhenChangeTab({this.child});
  final Widget child;
  final NoLoadWhenChangeTabState _state = NoLoadWhenChangeTabState();

  @override
  State<StatefulWidget> createState() {
    return _state;
  }
}

class NoLoadWhenChangeTabState extends State<NoLoadWhenChangeTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
