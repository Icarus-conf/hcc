import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/features/home/widgets/custom_app_for_medical_file.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppForMedicalFile(
            text: 'Notifications',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prof. Dr. Mohamed Saad.',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              'confirmation of the reservation request.',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        const Gap(12),
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/images/doctor.jpg',
                          ),
                        ),
                      ],
                    ),
                    const Gap(12),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: Colors.grey[400],
                        ),
                        Text(
                          '5:00 pm',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prof. Dr. Mohamed Saad.',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'confirmation of the reservation request.',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Gap(12),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/images/doctor.jpg',
                          ),
                        ),
                      ],
                    ),
                    Gap(12),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                        ),
                        Text(
                          '5:00 pm',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prof. Dr. Mohamed Saad.',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'confirmation of the reservation request.',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Gap(12),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/images/doctor.jpg',
                          ),
                        ),
                      ],
                    ),
                    Gap(12),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                        ),
                        Text(
                          '5:00 pm',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
