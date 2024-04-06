// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostsModel _$PostsModelFromJson(Map<String, dynamic> json) {
  return _PostsModel.fromJson(json);
}

/// @nodoc
mixin _$PostsModel {
  List<PostData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsModelCopyWith<PostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsModelCopyWith<$Res> {
  factory $PostsModelCopyWith(
          PostsModel value, $Res Function(PostsModel) then) =
      _$PostsModelCopyWithImpl<$Res, PostsModel>;
  @useResult
  $Res call({List<PostData> data});
}

/// @nodoc
class _$PostsModelCopyWithImpl<$Res, $Val extends PostsModel>
    implements $PostsModelCopyWith<$Res> {
  _$PostsModelCopyWithImpl(this._value, this._then);

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
              as List<PostData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsModelImplCopyWith<$Res>
    implements $PostsModelCopyWith<$Res> {
  factory _$$PostsModelImplCopyWith(
          _$PostsModelImpl value, $Res Function(_$PostsModelImpl) then) =
      __$$PostsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostData> data});
}

/// @nodoc
class __$$PostsModelImplCopyWithImpl<$Res>
    extends _$PostsModelCopyWithImpl<$Res, _$PostsModelImpl>
    implements _$$PostsModelImplCopyWith<$Res> {
  __$$PostsModelImplCopyWithImpl(
      _$PostsModelImpl _value, $Res Function(_$PostsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PostsModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsModelImpl implements _PostsModel {
  const _$PostsModelImpl({required final List<PostData> data}) : _data = data;

  factory _$PostsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsModelImplFromJson(json);

  final List<PostData> _data;
  @override
  List<PostData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PostsModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsModelImplCopyWith<_$PostsModelImpl> get copyWith =>
      __$$PostsModelImplCopyWithImpl<_$PostsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsModelImplToJson(
      this,
    );
  }
}

abstract class _PostsModel implements PostsModel {
  const factory _PostsModel({required final List<PostData> data}) =
      _$PostsModelImpl;

  factory _PostsModel.fromJson(Map<String, dynamic> json) =
      _$PostsModelImpl.fromJson;

  @override
  List<PostData> get data;
  @override
  @JsonKey(ignore: true)
  _$$PostsModelImplCopyWith<_$PostsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostData _$PostDataFromJson(Map<String, dynamic> json) {
  return _PostData.fromJson(json);
}

/// @nodoc
mixin _$PostData {
  int? get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<MediaData>? get medias => throw _privateConstructorUsedError;
  List<String>? get numberOfViews => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDataCopyWith<PostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDataCopyWith<$Res> {
  factory $PostDataCopyWith(PostData value, $Res Function(PostData) then) =
      _$PostDataCopyWithImpl<$Res, PostData>;
  @useResult
  $Res call(
      {int? id,
      int userId,
      String? message,
      List<MediaData>? medias,
      List<String>? numberOfViews,
      String? updatedAt,
      String? createdAt});
}

/// @nodoc
class _$PostDataCopyWithImpl<$Res, $Val extends PostData>
    implements $PostDataCopyWith<$Res> {
  _$PostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? message = freezed,
    Object? medias = freezed,
    Object? numberOfViews = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      medias: freezed == medias
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<MediaData>?,
      numberOfViews: freezed == numberOfViews
          ? _value.numberOfViews
          : numberOfViews // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostDataImplCopyWith<$Res>
    implements $PostDataCopyWith<$Res> {
  factory _$$PostDataImplCopyWith(
          _$PostDataImpl value, $Res Function(_$PostDataImpl) then) =
      __$$PostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int userId,
      String? message,
      List<MediaData>? medias,
      List<String>? numberOfViews,
      String? updatedAt,
      String? createdAt});
}

/// @nodoc
class __$$PostDataImplCopyWithImpl<$Res>
    extends _$PostDataCopyWithImpl<$Res, _$PostDataImpl>
    implements _$$PostDataImplCopyWith<$Res> {
  __$$PostDataImplCopyWithImpl(
      _$PostDataImpl _value, $Res Function(_$PostDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? message = freezed,
    Object? medias = freezed,
    Object? numberOfViews = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$PostDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      medias: freezed == medias
          ? _value._medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<MediaData>?,
      numberOfViews: freezed == numberOfViews
          ? _value._numberOfViews
          : numberOfViews // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDataImpl implements _PostData {
  const _$PostDataImpl(
      {this.id,
      required this.userId,
      this.message,
      final List<MediaData>? medias,
      final List<String>? numberOfViews,
      this.updatedAt,
      this.createdAt})
      : _medias = medias,
        _numberOfViews = numberOfViews;

  factory _$PostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDataImplFromJson(json);

  @override
  final int? id;
  @override
  final int userId;
  @override
  final String? message;
  final List<MediaData>? _medias;
  @override
  List<MediaData>? get medias {
    final value = _medias;
    if (value == null) return null;
    if (_medias is EqualUnmodifiableListView) return _medias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _numberOfViews;
  @override
  List<String>? get numberOfViews {
    final value = _numberOfViews;
    if (value == null) return null;
    if (_numberOfViews is EqualUnmodifiableListView) return _numberOfViews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? updatedAt;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'PostData(id: $id, userId: $userId, message: $message, medias: $medias, numberOfViews: $numberOfViews, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._medias, _medias) &&
            const DeepCollectionEquality()
                .equals(other._numberOfViews, _numberOfViews) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      message,
      const DeepCollectionEquality().hash(_medias),
      const DeepCollectionEquality().hash(_numberOfViews),
      updatedAt,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDataImplCopyWith<_$PostDataImpl> get copyWith =>
      __$$PostDataImplCopyWithImpl<_$PostDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDataImplToJson(
      this,
    );
  }
}

abstract class _PostData implements PostData {
  const factory _PostData(
      {final int? id,
      required final int userId,
      final String? message,
      final List<MediaData>? medias,
      final List<String>? numberOfViews,
      final String? updatedAt,
      final String? createdAt}) = _$PostDataImpl;

  factory _PostData.fromJson(Map<String, dynamic> json) =
      _$PostDataImpl.fromJson;

  @override
  int? get id;
  @override
  int get userId;
  @override
  String? get message;
  @override
  List<MediaData>? get medias;
  @override
  List<String>? get numberOfViews;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PostDataImplCopyWith<_$PostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
