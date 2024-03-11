import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/postitem_model.dart';

class PostNewItemPage extends StatefulWidget {
  @override
  _PostNewItemPageState createState() => _PostNewItemPageState();
}

class _PostNewItemPageState extends State<PostNewItemPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

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
              onPressed: () {
                final String title = _titleController.text.trim();
                final String content = _contentController.text.trim();
                if (title.isNotEmpty && content.isNotEmpty) {
                  // Create a new instance of PostItemModel
                  final newItem = PostItemModel(title: title, content: content);
                  // Add logic to save or display the new item
                  // For now, you can print it to the console
                  print('Title: ${newItem.title}, Content: ${newItem.content}');
                  // Clear the text fields after posting
                  _titleController.clear();
                  _contentController.clear();
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
