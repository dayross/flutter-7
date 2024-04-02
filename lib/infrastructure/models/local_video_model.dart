import 'package:flutter_application_1/domain/entities/video_post.dart';

class LocalVideoModel {
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.caption,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
          caption: json["name"] ?? "Hola!",
          videoUrl: json["videoUrl"],
          likes: json["likes"],
          views: json["views"]);

  VideoPost toVideoPostEntity() => VideoPost(
      caption: this.caption,
      videoUrl: this.videoUrl,
      likes: this.likes,
      views: this.views);
}
