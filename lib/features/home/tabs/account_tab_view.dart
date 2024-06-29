import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/config/routes/routes.dart';

import 'package:hcc/features/home/widgets/another_custom_app_bar.dart';
import 'package:hcc/features/home/widgets/custom_avatar_picture.dart';

class AccountTabView extends StatelessWidget {
  const AccountTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AnotherCustomAppBar(text: 'Account'),
        const Gap(50),
        const CustomAvatarPicture(imagePath: 'assets/images/man.png'),
        const Gap(12),
        const Text('Karim Ahmed'),
        const Gap(25),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.personalFileView);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: Colors.lightBlue,
                        ),
                        Gap(12),
                        Text('personal file'),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.lightBlue,
                      ),
                      Gap(12),
                      Text('Settings'),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
              const Divider(),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.help_outline,
                        color: Colors.lightBlue,
                      ),
                      Gap(12),
                      Text('Help'),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
              const Divider(),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.lightBlue,
                      ),
                      Gap(12),
                      Text('privacy policy'),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
              const Divider(),
              const Gap(12),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.loginView);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.lightBlue,
                        ),
                        Gap(12),
                        Text('sign out'),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
