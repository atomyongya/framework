import 'package:flutter_app/utils/modals/media_model/media_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_model.g.dart';
part 'posts_model.freezed.dart';

@freezed
class PostsModel with _$PostsModel {
  const factory PostsModel({
    required List<PostData> data,
  }) = _PostsModel;

  factory PostsModel.fromJson(Map<String, Object?> json) =>
      _$PostsModelFromJson(json);
}

@freezed
class PostData with _$PostData {
  const factory PostData({
    int? id,
    required int userId,
    String? message,
    List<MediaData>? medias,
    List<String>? numberOfViews,
    String? updatedAt,
    String? createdAt,
  }) = _PostData;

  factory PostData.fromJson(Map<String, Object?> json) =>
      _$PostDataFromJson(json);
}
