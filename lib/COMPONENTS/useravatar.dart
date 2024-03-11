import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final String imageUrl;

  const UserAvatar({
    Key? key,
    required this.size,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
