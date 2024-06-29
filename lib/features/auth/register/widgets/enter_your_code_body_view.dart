import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/config/routes/routes.dart';
import 'package:hcc/features/home/widgets/custom_btn.dart';

class EnterYourCodeBodyView extends StatelessWidget {
  EnterYourCodeBodyView({super.key});

  final List<int> code =
      List<int>.generate(5, (int index) => index + 1, growable: true);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const Text(
            'Enter your phone number',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            'We will send the login vis SMS',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: code.map(
              (e) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(e.toString()),
                );
              },
            ).toList(),
          ),
          const Spacer(),
          CustomBtn(
            text: 'continue',
            width: double.infinity,
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.enterYourPasswordView);
            },
          ),
        ],
      ),
    );
  }
}
