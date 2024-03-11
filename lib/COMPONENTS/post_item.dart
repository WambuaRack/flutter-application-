import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kitengela/COMPONENTS/postitem_model.dart';

class PostNewItemPage extends StatefulWidget {
  @override
  _PostNewItemPageState createState() => _PostNewItemPageState();
}

class _PostNewItemPageState extends State<PostNewItemPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  File? _image;
  File? _video;

  Future<void> _getImageFromGallery() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> _getVideoFromGallery() async {
    final pickedVideo =
        await ImagePicker().getVideo(source: ImageSource.gallery);
    setState(() {
      if (pickedVideo != null) {
        _video = File(pickedVideo.path);
      } else {
        print('No video selected.');
      }
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post New Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _contentController,
              maxLines: null, // Allow multiple lines for post content
              decoration: InputDecoration(
                hintText: 'Write your item here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _getImageFromGallery,
              child: Text('Select Image'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: _getVideoFromGallery,
              child: Text('Select Video'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final String title = _titleController.text.trim();
                final String content = _contentController.text.trim();
                if (title.isNotEmpty && content.isNotEmpty) {
                  // Create a new instance of PostItemModel
                  final newItem = PostItemModel(
                    title: title,
                    content: content,
                    image: _image,
                    video: _video,
                  );
                  // Add logic to save or display the new item
                  // For now, you can print it to the console
                  print('Title: ${newItem.title}, Content: ${newItem.content}');
                  if (_image != null) {
                    print('Image path: ${_image!.path}');
                  }
                  if (_video != null) {
                    print('Video path: ${_video!.path}');
                  }
                  // Clear the text fields after posting
                  _titleController.clear();
                  _contentController.clear();
                  setState(() {
                    _image = null;
                    _video = null;
                  });
                }
              },
              child: Text('Post'),
            ),
          ],
        ),
      ),
    );
  }
}
