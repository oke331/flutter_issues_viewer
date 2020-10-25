// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'issue_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IssueDto _$IssueDtoFromJson(Map<String, dynamic> json) {
  return _IssueDto.fromJson(json);
}

/// @nodoc
class _$IssueDtoTearOff {
  const _$IssueDtoTearOff();

// ignore: unused_element
  _IssueDto call(
      {int number,
      String title,
      String body,
      String state,
      String html_url,
      int comments,
      DateTime created_at,
      DateTime updated_at}) {
    return _IssueDto(
      number: number,
      title: title,
      body: body,
      state: state,
      html_url: html_url,
      comments: comments,
      created_at: created_at,
      updated_at: updated_at,
    );
  }

// ignore: unused_element
  IssueDto fromJson(Map<String, Object> json) {
    return IssueDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IssueDto = _$IssueDtoTearOff();

/// @nodoc
mixin _$IssueDto {
  int get number;
  String get title;
  String get body;
  String get state;
  String get html_url;
  int get comments;
  DateTime get created_at;
  DateTime get updated_at;

  Map<String, dynamic> toJson();
  $IssueDtoCopyWith<IssueDto> get copyWith;
}

/// @nodoc
abstract class $IssueDtoCopyWith<$Res> {
  factory $IssueDtoCopyWith(IssueDto value, $Res Function(IssueDto) then) =
      _$IssueDtoCopyWithImpl<$Res>;
  $Res call(
      {int number,
      String title,
      String body,
      String state,
      String html_url,
      int comments,
      DateTime created_at,
      DateTime updated_at});
}

/// @nodoc
class _$IssueDtoCopyWithImpl<$Res> implements $IssueDtoCopyWith<$Res> {
  _$IssueDtoCopyWithImpl(this._value, this._then);

  final IssueDto _value;
  // ignore: unused_field
  final $Res Function(IssueDto) _then;

  @override
  $Res call({
    Object number = freezed,
    Object title = freezed,
    Object body = freezed,
    Object state = freezed,
    Object html_url = freezed,
    Object comments = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed ? _value.number : number as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      state: state == freezed ? _value.state : state as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      comments: comments == freezed ? _value.comments : comments as int,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$IssueDtoCopyWith<$Res> implements $IssueDtoCopyWith<$Res> {
  factory _$IssueDtoCopyWith(_IssueDto value, $Res Function(_IssueDto) then) =
      __$IssueDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int number,
      String title,
      String body,
      String state,
      String html_url,
      int comments,
      DateTime created_at,
      DateTime updated_at});
}

/// @nodoc
class __$IssueDtoCopyWithImpl<$Res> extends _$IssueDtoCopyWithImpl<$Res>
    implements _$IssueDtoCopyWith<$Res> {
  __$IssueDtoCopyWithImpl(_IssueDto _value, $Res Function(_IssueDto) _then)
      : super(_value, (v) => _then(v as _IssueDto));

  @override
  _IssueDto get _value => super._value as _IssueDto;

  @override
  $Res call({
    Object number = freezed,
    Object title = freezed,
    Object body = freezed,
    Object state = freezed,
    Object html_url = freezed,
    Object comments = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
  }) {
    return _then(_IssueDto(
      number: number == freezed ? _value.number : number as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      state: state == freezed ? _value.state : state as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      comments: comments == freezed ? _value.comments : comments as int,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IssueDto with DiagnosticableTreeMixin implements _IssueDto {
  const _$_IssueDto(
      {this.number,
      this.title,
      this.body,
      this.state,
      this.html_url,
      this.comments,
      this.created_at,
      this.updated_at});

  factory _$_IssueDto.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueDtoFromJson(json);

  @override
  final int number;
  @override
  final String title;
  @override
  final String body;
  @override
  final String state;
  @override
  final String html_url;
  @override
  final int comments;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IssueDto(number: $number, title: $title, body: $body, state: $state, html_url: $html_url, comments: $comments, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IssueDto'))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('html_url', html_url))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('updated_at', updated_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueDto &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(html_url) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at);

  @override
  _$IssueDtoCopyWith<_IssueDto> get copyWith =>
      __$IssueDtoCopyWithImpl<_IssueDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueDtoToJson(this);
  }
}

abstract class _IssueDto implements IssueDto {
  const factory _IssueDto(
      {int number,
      String title,
      String body,
      String state,
      String html_url,
      int comments,
      DateTime created_at,
      DateTime updated_at}) = _$_IssueDto;

  factory _IssueDto.fromJson(Map<String, dynamic> json) = _$_IssueDto.fromJson;

  @override
  int get number;
  @override
  String get title;
  @override
  String get body;
  @override
  String get state;
  @override
  String get html_url;
  @override
  int get comments;
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  _$IssueDtoCopyWith<_IssueDto> get copyWith;
}
