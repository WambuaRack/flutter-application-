import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, this.size = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRect(
        child: Image.asset(
          'assets/temp/h.jpg',
          width: size,
          height: size,
        ),
      ),
    );
  }
}
