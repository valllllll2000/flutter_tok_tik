import 'package:tok_tik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      required this.likes,
      required this.views});

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
        name: json['name'] ?? 'no name',
        videoUrl: json['videoUrl'],
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0);
  }

  VideoPost toVideoPostEntity() {
    return VideoPost(
        caption: name, videoUrl: videoUrl, likes: likes, views: views);
  }
}
