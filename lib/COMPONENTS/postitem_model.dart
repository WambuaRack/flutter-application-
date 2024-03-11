import 'dart:io';

class PostItemModel {
  final String title;
  final String content;
  final File? image;
  final File? video;

  PostItemModel({
    required this.title,
    required this.content,
    this.image,
    this.video,
  });
}
