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
      {int id,
      String title,
      String body,
      String state,
      String html_url,
      List<Map<String, dynamic>> labels,
      DateTime created_at,
      DateTime updated_at,
      DateTime closed_at}) {
    return _IssueDto(
      id: id,
      title: title,
      body: body,
      state: state,
      html_url: html_url,
      labels: labels,
      created_at: created_at,
      updated_at: updated_at,
      closed_at: closed_at,
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
  int get id;
  String get title;
  String get body;
  String get state;
  String get html_url;
  List<Map<String, dynamic>> get labels;
  DateTime get created_at;
  DateTime get updated_at;
  DateTime get closed_at;

  Map<String, dynamic> toJson();
  $IssueDtoCopyWith<IssueDto> get copyWith;
}

/// @nodoc
abstract class $IssueDtoCopyWith<$Res> {
  factory $IssueDtoCopyWith(IssueDto value, $Res Function(IssueDto) then) =
      _$IssueDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String body,
      String state,
      String html_url,
      List<Map<String, dynamic>> labels,
      DateTime created_at,
      DateTime updated_at,
      DateTime closed_at});
}

/// @nodoc
class _$IssueDtoCopyWithImpl<$Res> implements $IssueDtoCopyWith<$Res> {
  _$IssueDtoCopyWithImpl(this._value, this._then);

  final IssueDto _value;
  // ignore: unused_field
  final $Res Function(IssueDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object state = freezed,
    Object html_url = freezed,
    Object labels = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object closed_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      state: state == freezed ? _value.state : state as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      labels: labels == freezed
          ? _value.labels
          : labels as List<Map<String, dynamic>>,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as DateTime,
      closed_at:
          closed_at == freezed ? _value.closed_at : closed_at as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$IssueDtoCopyWith<$Res> implements $IssueDtoCopyWith<$Res> {
  factory _$IssueDtoCopyWith(_IssueDto value, $Res Function(_IssueDto) then) =
      __$IssueDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String body,
      String state,
      String html_url,
      List<Map<String, dynamic>> labels,
      DateTime created_at,
      DateTime updated_at,
      DateTime closed_at});
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
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object state = freezed,
    Object html_url = freezed,
    Object labels = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object closed_at = freezed,
  }) {
    return _then(_IssueDto(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      state: state == freezed ? _value.state : state as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      labels: labels == freezed
          ? _value.labels
          : labels as List<Map<String, dynamic>>,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as DateTime,
      closed_at:
          closed_at == freezed ? _value.closed_at : closed_at as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IssueDto with DiagnosticableTreeMixin implements _IssueDto {
  const _$_IssueDto(
      {this.id,
      this.title,
      this.body,
      this.state,
      this.html_url,
      this.labels,
      this.created_at,
      this.updated_at,
      this.closed_at});

  factory _$_IssueDto.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String state;
  @override
  final String html_url;
  @override
  final List<Map<String, dynamic>> labels;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  @override
  final DateTime closed_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IssueDto(id: $id, title: $title, body: $body, state: $state, html_url: $html_url, labels: $labels, created_at: $created_at, updated_at: $updated_at, closed_at: $closed_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IssueDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('html_url', html_url))
      ..add(DiagnosticsProperty('labels', labels))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('updated_at', updated_at))
      ..add(DiagnosticsProperty('closed_at', closed_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.closed_at, closed_at) ||
                const DeepCollectionEquality()
                    .equals(other.closed_at, closed_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(html_url) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(closed_at);

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
      {int id,
      String title,
      String body,
      String state,
      String html_url,
      List<Map<String, dynamic>> labels,
      DateTime created_at,
      DateTime updated_at,
      DateTime closed_at}) = _$_IssueDto;

  factory _IssueDto.fromJson(Map<String, dynamic> json) = _$_IssueDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get state;
  @override
  String get html_url;
  @override
  List<Map<String, dynamic>> get labels;
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  DateTime get closed_at;
  @override
  _$IssueDtoCopyWith<_IssueDto> get copyWith;
}
