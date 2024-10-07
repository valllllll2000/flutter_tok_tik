import 'package:tok_tik/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
