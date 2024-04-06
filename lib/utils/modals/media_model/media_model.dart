import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.g.dart';
part 'media_model.freezed.dart';

/// List of MediaData
///
/// @type List<MediaData> [data] : List of Media data.
@freezed
class MediaModels with _$MediaModels {
  const factory MediaModels({
    required List<MediaData> data,
  }) = _MediaModels;

  factory MediaModels.fromJson(Map<String, Object?> json) =>
      _$MediaModelsFromJson(json);
}

/// Model that contain media data.
///
/// @type String [id] : Id of an image.
///
/// @type String [url] : Url of an image in database.
///
/// @type String [name] : Name of an image.
///
/// @type String [type] : Type of na image.
///
/// @type String [userId] : User id that contain image.
///
/// @type String? [thumbnail] : Thumbnail of media.
///
/// @type DateTime? [createdAt] : Date and time when user create media.
@freezed
class MediaData with _$MediaData {
  const factory MediaData({
    int? id,
    String? url,
    String? name,
    String? type,
    String? createdAt,
    String? thumbnail,
  }) = _MediaData;

  factory MediaData.fromJson(Map<String, Object?> json) =>
      _$MediaDataFromJson(json);
}
