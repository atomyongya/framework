// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaModels _$MediaModelsFromJson(Map<String, dynamic> json) {
  return _MediaModels.fromJson(json);
}

/// @nodoc
mixin _$MediaModels {
  List<MediaData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaModelsCopyWith<MediaModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaModelsCopyWith<$Res> {
  factory $MediaModelsCopyWith(
          MediaModels value, $Res Function(MediaModels) then) =
      _$MediaModelsCopyWithImpl<$Res, MediaModels>;
  @useResult
  $Res call({List<MediaData> data});
}

/// @nodoc
class _$MediaModelsCopyWithImpl<$Res, $Val extends MediaModels>
    implements $MediaModelsCopyWith<$Res> {
  _$MediaModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MediaData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaModelsImplCopyWith<$Res>
    implements $MediaModelsCopyWith<$Res> {
  factory _$$MediaModelsImplCopyWith(
          _$MediaModelsImpl value, $Res Function(_$MediaModelsImpl) then) =
      __$$MediaModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MediaData> data});
}

/// @nodoc
class __$$MediaModelsImplCopyWithImpl<$Res>
    extends _$MediaModelsCopyWithImpl<$Res, _$MediaModelsImpl>
    implements _$$MediaModelsImplCopyWith<$Res> {
  __$$MediaModelsImplCopyWithImpl(
      _$MediaModelsImpl _value, $Res Function(_$MediaModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MediaModelsImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MediaData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaModelsImpl implements _MediaModels {
  const _$MediaModelsImpl({required final List<MediaData> data}) : _data = data;

  factory _$MediaModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaModelsImplFromJson(json);

  final List<MediaData> _data;
  @override
  List<MediaData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MediaModels(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaModelsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaModelsImplCopyWith<_$MediaModelsImpl> get copyWith =>
      __$$MediaModelsImplCopyWithImpl<_$MediaModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaModelsImplToJson(
      this,
    );
  }
}

abstract class _MediaModels implements MediaModels {
  const factory _MediaModels({required final List<MediaData> data}) =
      _$MediaModelsImpl;

  factory _MediaModels.fromJson(Map<String, dynamic> json) =
      _$MediaModelsImpl.fromJson;

  @override
  List<MediaData> get data;
  @override
  @JsonKey(ignore: true)
  _$$MediaModelsImplCopyWith<_$MediaModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaData _$MediaDataFromJson(Map<String, dynamic> json) {
  return _MediaData.fromJson(json);
}

/// @nodoc
mixin _$MediaData {
  int? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaDataCopyWith<MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDataCopyWith<$Res> {
  factory $MediaDataCopyWith(MediaData value, $Res Function(MediaData) then) =
      _$MediaDataCopyWithImpl<$Res, MediaData>;
  @useResult
  $Res call(
      {int? id,
      String? url,
      String? name,
      String? type,
      String? createdAt,
      String? thumbnail});
}

/// @nodoc
class _$MediaDataCopyWithImpl<$Res, $Val extends MediaData>
    implements $MediaDataCopyWith<$Res> {
  _$MediaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaDataImplCopyWith<$Res>
    implements $MediaDataCopyWith<$Res> {
  factory _$$MediaDataImplCopyWith(
          _$MediaDataImpl value, $Res Function(_$MediaDataImpl) then) =
      __$$MediaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? url,
      String? name,
      String? type,
      String? createdAt,
      String? thumbnail});
}

/// @nodoc
class __$$MediaDataImplCopyWithImpl<$Res>
    extends _$MediaDataCopyWithImpl<$Res, _$MediaDataImpl>
    implements _$$MediaDataImplCopyWith<$Res> {
  __$$MediaDataImplCopyWithImpl(
      _$MediaDataImpl _value, $Res Function(_$MediaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$MediaDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaDataImpl implements _MediaData {
  const _$MediaDataImpl(
      {this.id,
      this.url,
      this.name,
      this.type,
      this.createdAt,
      this.thumbnail});

  factory _$MediaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? url;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? createdAt;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'MediaData(id: $id, url: $url, name: $name, type: $type, createdAt: $createdAt, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, name, type, createdAt, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaDataImplCopyWith<_$MediaDataImpl> get copyWith =>
      __$$MediaDataImplCopyWithImpl<_$MediaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaDataImplToJson(
      this,
    );
  }
}

abstract class _MediaData implements MediaData {
  const factory _MediaData(
      {final int? id,
      final String? url,
      final String? name,
      final String? type,
      final String? createdAt,
      final String? thumbnail}) = _$MediaDataImpl;

  factory _MediaData.fromJson(Map<String, dynamic> json) =
      _$MediaDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get url;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get createdAt;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$MediaDataImplCopyWith<_$MediaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
