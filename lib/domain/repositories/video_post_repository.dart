import '../entities/video_post.dart';

abstract class VideoPostRepository {

  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByPage(int page);

}