import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/textfield.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/COMPONENTS/useravatar.dart';
import 'package:kitengela/config/app_strings.dart';
import 'package:kitengela/config/gender.dart';
import 'package:kitengela/styles/appcolors.dart';
import 'package:kitengela/styles/apptext.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none; // Now Gender should be recognized

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Edit Profile"),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Stack(
                children: [
                  UserAvatar(
                    size: 200,
                    imageUrl:
                        'path_to_user_avatar_image.jpg', // Provide the imageUrl here
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Icon(Icons.edit),
                    ),
                  )
                ],
              ),
              SizedBox(height: 60),
              AppTextField(hint: AppStrings.firstName),
              SizedBox(height: 16),
              AppTextField(hint: AppStrings.lastName),
              SizedBox(height: 16),
              AppTextField(hint: AppStrings.phoneNumber),
              SizedBox(height: 16),
              AppTextField(hint: AppStrings.location),
              SizedBox(height: 16),
              AppTextField(hint: AppStrings.birthday),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "GENDER",
                    style: AppText.subtitle2,
                  ),
                ],
              ),
              SizedBox(height: 16),
              RadioListTile(
                title: Text(AppStrings.male),
                value: Gender.male,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.male;
                  });
                },
              ),
              RadioListTile(
                title: Text(AppStrings.female),
                value: Gender.female,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.female;
                  });
                },
              ),
              RadioListTile(
                title: Text(AppStrings.other),
                value: Gender.other,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.other;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
