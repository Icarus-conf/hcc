import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:hcc/features/home/widgets/another_custom_app_bar.dart';

class CategoryTabView extends StatelessWidget {
  const CategoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AnotherCustomAppBar(
          text: 'Category',
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/examination.png',
                        width: 40,
                        color: Colors.lightBlue,
                      ),
                      const Gap(12),
                      const Text('Examination'),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/scan.png',
                        width: 40,
                        color: Colors.lightBlue,
                      ),
                      const Gap(12),
                      const Text('Ultrasound'),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/medal.png',
                        width: 40,
                        color: Colors.lightBlue,
                      ),
                      const Gap(12),
                      const Text('Chemontherapy'),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
