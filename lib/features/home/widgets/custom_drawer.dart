import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/core/util/app_colors.dart';
import 'package:hcc/features/home/model/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: MediaQuery.of(context).size.height * 0.28,
      child: Column(
        children: [
          const Gap(60),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.primaryColor,
                child: CircleAvatar(
                  radius: 18,
                  child: Image.asset(
                    'assets/images/man.png',
                    width: 50,
                  ),
                ),
              ),
              const Gap(12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Karim Ahmed",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "exampl@email.com",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 0.4,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Gap(15);
              },
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Icon(
                      drawerItems[index].icon,
                      color: Colors.lightBlue,
                    ),
                    const Gap(10),
                    Text(drawerItems[index].text ?? ''),
                  ],
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.lightBlue,
                ),
                Text('Log out'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
