import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:hcc/core/util/app_colors.dart';
import 'package:hcc/features/home/widgets/custom_avatar_picture.dart';

class PersonalFileView extends StatelessWidget {
  const PersonalFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 36,
        ),
        child: Column(
          children: [
            const CustomAvatarPicture(imagePath: 'assets/images/man.png'),
            const Gap(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'First Name',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const Gap(8),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: const Text(
                    'Karim',
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Last Name',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const Gap(8),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: const Text(
                    'Ahmed',
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'E-mail',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const Gap(8),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: const Text(
                    'example@email.com',
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'File Update',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
