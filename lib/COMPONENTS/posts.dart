import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/postitem_model.dart';

class PostsPage extends StatelessWidget {
  final List<PostItemModel> posts;

  const PostsPage({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 2,
              child: ListTile(
                title: Text(post.title ??
                    ''), // Use null-aware operator to handle null title
                subtitle: Text(post.content ??
                    ''), // Use null-aware operator to handle null content
                // You can add additional fields or widgets here as needed
              ),
            ),
          );
        },
      ),
    );
  }
}
