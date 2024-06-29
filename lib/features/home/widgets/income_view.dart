import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/features/home/widgets/custom_btn.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey[300]!,
                width: 0.4,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Gap(12),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Mar,26,2024 -   10:15 AM',
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Online'),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300]!,
                  thickness: 0.4,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/doctor.jpg',
                      width: 100,
                    ),
                    const Gap(12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Professor Dr.Mohamed Saad'),
                        const Gap(5),
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pharetra, sem eu tincidunt molestie.',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        const Gap(5),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBtn(
                        text: 'Check in',
                        width: MediaQuery.of(context).size.width * 0.4,
                        onPressed: () {},
                      ),
                      const Gap(20),
                      CustomBtn(
                        text: 'Cancel',
                        width: MediaQuery.of(context).size.width * 0.4,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        borderSideColor: Colors.lightBlue[200],
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const Gap(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
