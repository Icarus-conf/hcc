import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hcc/core/util/app_colors.dart';

import 'package:hcc/features/home/widgets/custom_app_for_medical_file.dart';

class MedicalFileView extends StatelessWidget {
  const MedicalFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppForMedicalFile(
              text: 'Medical File',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Gap(18),
            CircleAvatar(
              radius: 52,
              backgroundColor: AppColors.primaryColor,
              child: CircleAvatar(
                radius: 50,
                child: Image.asset(
                  'assets/images/man.png',
                ),
              ),
            ),
            const Gap(12),
            const Text(
              'Karim Ahmed',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const Gap(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/blood-test.png',
                        width: 30,
                      ),
                      const Gap(12),
                      const Text(
                        'B+',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  const Gap(12),
                  Container(
                    height: 60,
                    width: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                    ),
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/waist.png',
                        width: 30,
                      ),
                      const Gap(12),
                      const Text(
                        '65 kg',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  const Gap(12),
                  Container(
                    height: 60,
                    width: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                    ),
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/height.png',
                        width: 30,
                      ),
                      const Gap(12),
                      const Text(
                        '165',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Gap(25),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Zoldex',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.lightBlue,
                              ),
                            ),
                            Text(
                              'waiting for the appointment to be set',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.green[300],
                              ),
                            ),
                          ],
                        ),
                        const Gap(12),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'next session time: 01/05/2024',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(Icons.calendar_month_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Medical visit',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(12),
                        const Text(
                          'Thu,12,2024',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.lightBlue,
                          ),
                        ),
                        const Gap(12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/image.png',
                                width: 35,
                              ),
                            ),
                            const Gap(5),
                            Container(
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/image.png',
                                width: 35,
                              ),
                            ),
                            const Gap(5),
                            Container(
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/pdf.png',
                                width: 35,
                              ),
                            ),
                          ],
                        ),
                        const Gap(12),
                        const Text(
                          'Additional note',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'I feel tightness in my chest and respiratory tract. \n A headache that does not go away Dizziness',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Examination result',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(12),
                        const Text(
                          'Thu,12,2024',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.lightBlue,
                          ),
                        ),
                        const Gap(12),
                        const Text(
                          'results',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/image.png',
                                width: 35,
                              ),
                            ),
                            const Gap(5),
                            Container(
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/image.png',
                                width: 35,
                              ),
                            ),
                            const Gap(5),
                            Container(
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/pdf.png',
                                width: 35,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daily readings',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(12),
                        Text(
                          'Thu,12,2024',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.lightBlue,
                          ),
                        ),
                        Gap(12),
                        Text(
                          'By Samir Ali',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
