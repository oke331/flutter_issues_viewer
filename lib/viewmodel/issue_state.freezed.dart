// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'issue_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$IssueStateTearOff {
  const _$IssueStateTearOff();

// ignore: unused_element
  _IssueState call(
      {bool init = false,
      bool isLoading = false,
      List<IssueDto> issueDtoList,
      int lastPage = 0}) {
    return _IssueState(
      init: init,
      isLoading: isLoading,
      issueDtoList: issueDtoList,
      lastPage: lastPage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $IssueState = _$IssueStateTearOff();

/// @nodoc
mixin _$IssueState {
  bool get init;
  bool get isLoading;
  List<IssueDto> get issueDtoList;
  int get lastPage;

  $IssueStateCopyWith<IssueState> get copyWith;
}

/// @nodoc
abstract class $IssueStateCopyWith<$Res> {
  factory $IssueStateCopyWith(
          IssueState value, $Res Function(IssueState) then) =
      _$IssueStateCopyWithImpl<$Res>;
  $Res call(
      {bool init, bool isLoading, List<IssueDto> issueDtoList, int lastPage});
}

/// @nodoc
class _$IssueStateCopyWithImpl<$Res> implements $IssueStateCopyWith<$Res> {
  _$IssueStateCopyWithImpl(this._value, this._then);

  final IssueState _value;
  // ignore: unused_field
  final $Res Function(IssueState) _then;

  @override
  $Res call({
    Object init = freezed,
    Object isLoading = freezed,
    Object issueDtoList = freezed,
    Object lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      init: init == freezed ? _value.init : init as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      issueDtoList: issueDtoList == freezed
          ? _value.issueDtoList
          : issueDtoList as List<IssueDto>,
      lastPage: lastPage == freezed ? _value.lastPage : lastPage as int,
    ));
  }
}

/// @nodoc
abstract class _$IssueStateCopyWith<$Res> implements $IssueStateCopyWith<$Res> {
  factory _$IssueStateCopyWith(
          _IssueState value, $Res Function(_IssueState) then) =
      __$IssueStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool init, bool isLoading, List<IssueDto> issueDtoList, int lastPage});
}

/// @nodoc
class __$IssueStateCopyWithImpl<$Res> extends _$IssueStateCopyWithImpl<$Res>
    implements _$IssueStateCopyWith<$Res> {
  __$IssueStateCopyWithImpl(
      _IssueState _value, $Res Function(_IssueState) _then)
      : super(_value, (v) => _then(v as _IssueState));

  @override
  _IssueState get _value => super._value as _IssueState;

  @override
  $Res call({
    Object init = freezed,
    Object isLoading = freezed,
    Object issueDtoList = freezed,
    Object lastPage = freezed,
  }) {
    return _then(_IssueState(
      init: init == freezed ? _value.init : init as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      issueDtoList: issueDtoList == freezed
          ? _value.issueDtoList
          : issueDtoList as List<IssueDto>,
      lastPage: lastPage == freezed ? _value.lastPage : lastPage as int,
    ));
  }
}

/// @nodoc
class _$_IssueState implements _IssueState {
  const _$_IssueState(
      {this.init = false,
      this.isLoading = false,
      this.issueDtoList,
      this.lastPage = 0})
      : assert(init != null),
        assert(isLoading != null),
        assert(lastPage != null);

  @JsonKey(defaultValue: false)
  @override
  final bool init;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final List<IssueDto> issueDtoList;
  @JsonKey(defaultValue: 0)
  @override
  final int lastPage;

  @override
  String toString() {
    return 'IssueState(init: $init, isLoading: $isLoading, issueDtoList: $issueDtoList, lastPage: $lastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueState &&
            (identical(other.init, init) ||
                const DeepCollectionEquality().equals(other.init, init)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.issueDtoList, issueDtoList) ||
                const DeepCollectionEquality()
                    .equals(other.issueDtoList, issueDtoList)) &&
            (identical(other.lastPage, lastPage) ||
                const DeepCollectionEquality()
                    .equals(other.lastPage, lastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(init) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(issueDtoList) ^
      const DeepCollectionEquality().hash(lastPage);

  @override
  _$IssueStateCopyWith<_IssueState> get copyWith =>
      __$IssueStateCopyWithImpl<_IssueState>(this, _$identity);
}

abstract class _IssueState implements IssueState {
  const factory _IssueState(
      {bool init,
      bool isLoading,
      List<IssueDto> issueDtoList,
      int lastPage}) = _$_IssueState;

  @override
  bool get init;
  @override
  bool get isLoading;
  @override
  List<IssueDto> get issueDtoList;
  @override
  int get lastPage;
  @override
  _$IssueStateCopyWith<_IssueState> get copyWith;
}
