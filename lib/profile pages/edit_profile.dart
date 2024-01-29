import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/textfield.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/COMPONENTS/useravatar.dart';
import 'package:kitengela/config/app%20strings.dart';
import 'package:kitengela/styles/appcolors.dart';
import 'package:kitengela/styles/apptext.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
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
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(Icons.edit)),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                AppTextField(hint: AppStrings.firstame),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.lastname),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.phonenumber),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.location),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: AppStrings.birthday),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "GENDER",
                      style: AppText.subtitle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                  width: 50,
                ),
                RadioListTile(
                    title: Text(AppStrings.male),
                    value: Gender.male,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = Gender.male;
                      });
                    }),
                RadioListTile(
                    title: Text(AppStrings.female),
                    value: Gender.female,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = Gender.female;
                      });
                    }),
                RadioListTile(
                    title: Text(AppStrings.other),
                    value: Gender.other,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = Gender.other;
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
