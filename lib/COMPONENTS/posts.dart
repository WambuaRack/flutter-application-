import 'package:flutter/material.dart';
import 'package:kitengela/styles/apptext.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(children: [
        Row(children: [
          Image.asset(
            'assets/temp/h.jpg',
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "MEERCY RACK",
            style: AppText.subtitle3,
          ),
        ]),
        SizedBox(
          height: 12,
        ),
        Image.asset(
          'assets/temp/v.jpg',
          height: 800,
        ),
        Text(
          "Do your best but don'lose yourself because in the morning time the sun will shine",
          style: AppText.subtitle3,
        ),
      ]),
    );
  }
}
