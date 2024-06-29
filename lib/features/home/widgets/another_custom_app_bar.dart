import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/core/util/app_colors.dart';

class AnotherCustomAppBar extends StatelessWidget {
  const AnotherCustomAppBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(35),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      12,
                    ),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Badge(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
