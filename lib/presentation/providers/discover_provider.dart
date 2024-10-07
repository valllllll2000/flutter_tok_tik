import 'package:flutter/cupertino.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepository videoPostsRepository;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostsRepository});

  Future<void> loadNextPage() async {
    final initialVideos = await videoPostsRepository.getTrendingVideosByPage(1);
    videos.addAll(initialVideos);
    initialLoading = false;
    notifyListeners();
  }
}
