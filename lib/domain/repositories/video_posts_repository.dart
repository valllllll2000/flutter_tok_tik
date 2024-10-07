import '../entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
