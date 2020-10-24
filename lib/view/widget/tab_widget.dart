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
    return NoLoad(
      child: StateNotifierProvider<IssueStateNotifier, IssueState>(
        create: (context) => IssueStateNotifier(IssueApi(label: _label)),
        builder: (context, _) {
          final state = context.select((IssueState value) => value);
          return IssueList(
            issueDtoList: state.issueDtoList,
            init: state.init,
            isLoading: state.isLoading,
            scrollCallback: () async => _callback(context),
            pullRefresh: () async => _pullRequest(context),
          );
        },
      ),
    );
  }

  Future<void> _callback(BuildContext context) async {
    await context.read<IssueStateNotifier>().getList();
  }

  Future<void> _pullRequest(BuildContext context) async {
    await context.read<IssueStateNotifier>().refreshAndFetch();
  }
}

class NoLoad extends StatefulWidget {
  NoLoad({this.child});
  final Widget child;
  final _NoLoadState _state = _NoLoadState();

  @override
  State<StatefulWidget> createState() {
    return _state;
  }
}

class _NoLoadState extends State<NoLoad> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
