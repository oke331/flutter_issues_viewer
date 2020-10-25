import 'package:flutter_issues/main.dart';
import 'package:flutter_issues/model/api/issue_api.dart';
import 'package:flutter_issues/model/dto/issue_dto.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'issue_state.freezed.dart';

@freezed
abstract class IssueState with _$IssueState {
  const factory IssueState({
    @Default(false) bool init,
    @Default(false) bool isLoading,
    List<IssueDto> issueDtoList,
    @Default(0) int lastPage,
  }) = _IssueState;
}

class IssueStateNotifier extends StateNotifier<IssueState> with LocatorMixin {
  IssueStateNotifier(IssueApi api)
      : _api = api,
        super(const IssueState()) {}

  final IssueApi _api;

  static const _errorMessage = 'エラーが発生しました。';

  @override
  Future<void> initState() async {
    try {
      await getList();
    } on Exception catch (e) {
      await Fluttertoast.showToast(msg: _errorMessage);
      logger.d(e.toString());
    } finally {
      state = state.copyWith(init: true);
    }
  }

  Future<void> getList() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    try {
      final issueDtoList = await _fetch();

      final newList = <IssueDto>[];
      if (state.issueDtoList != null && state.issueDtoList.isNotEmpty) {
        newList.addAll(state.issueDtoList);
      }

      newList.addAll(issueDtoList);

      state =
          state.copyWith(issueDtoList: newList, lastPage: state.lastPage + 1);
    } on Exception catch (e) {
      await Fluttertoast.showToast(msg: _errorMessage);
      logger.d(e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> refreshAndFetch() async {
    final beforeLastPage = state.lastPage;
    state = state.copyWith(lastPage: 0);
    try {
      final issueDtoList = await _fetch();
      final newList = <IssueDto>[];
      newList.addAll(issueDtoList);

      state = state.copyWith(issueDtoList: newList, lastPage: 1);
    } on Exception catch (e) {
      await Fluttertoast.showToast(msg: _errorMessage);
      logger.d(e.toString());
      state = state.copyWith(lastPage: beforeLastPage);
    }
  }

  Future<List<IssueDto>> _fetch() async {
    final result = await _api.fetch(lastPage: state.lastPage);
    return result;
  }
}
