import 'package:flutter/material.dart';
import 'package:hcc/core/util/app_colors.dart';

class CustomAvatarPicture extends StatelessWidget {
  const CustomAvatarPicture({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 52,
          backgroundColor: AppColors.primaryColor,
          child: CircleAvatar(
            radius: 50,
            child: Image.asset(
              imagePath,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 6,
          ),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: const Icon(
            Icons.edit_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
