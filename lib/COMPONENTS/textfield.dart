import 'package:flutter/material.dart';
import 'package:kitengela/styles/appcolors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          fillColor: AppColors.fomt,
          filled: true,
          hintStyle: TextStyle(
            color: AppColors.font2,
          )),
    );
  }
}
