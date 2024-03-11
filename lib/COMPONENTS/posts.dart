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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    subtitle: Text(post.content ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {
                            // Handle like functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.comment_outlined),
                          onPressed: () {
                            // Handle comment functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.repeat),
                          onPressed: () {
                            // Handle repost functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.share_outlined),
                          onPressed: () {
                            // Handle share functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          onPressed: () {
                            // Handle bookmark functionality
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
