import 'package:tok_tik/domain/datasource/video_posts_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';

import '../../domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videoPostsDatasource;

  VideoPostsRepositoryImpl({required this.videoPostsDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostsDatasource.getTrendingVideosByPage(page);
  }
}
