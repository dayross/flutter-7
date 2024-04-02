import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage async{
    // todo cargar videos

    notifyListeners();
  }
}
