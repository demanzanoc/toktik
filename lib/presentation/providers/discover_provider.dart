import 'package:flutter/material.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import '../../domain/entities/video_post.dart';
import '../../shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  // TODO(Repository, Datasource)

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
