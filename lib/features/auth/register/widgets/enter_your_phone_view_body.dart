import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/config/routes/routes.dart';
import 'package:hcc/features/home/widgets/custom_btn.dart';

class EnterYourPhoneViewBody extends StatelessWidget {
  const EnterYourPhoneViewBody({super.key});

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
          TextField(
            decoration: InputDecoration(
              prefixIcon: TextButton.icon(
                onPressed: () {},
                label: const Text('+20'),
                iconAlignment: IconAlignment.end,
                icon: const Icon(
                  Icons.arrow_drop_up_rounded,
                ),
              ),
              suffixIcon: const Icon(Icons.cancel_outlined),
              hintText: 'Enter your first name',
              labelStyle: const TextStyle(
                color: Colors.black,
              ),
              hintStyle: TextStyle(color: Colors.grey[400]),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[500]!,
                ),
              ),
            ),
          ),
          const Spacer(),
          CustomBtn(
            text: 'continue',
            width: double.infinity,
            onPressed: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    actions: [
                      CustomBtn(
                        text: 'Confirm',
                        width: double.infinity,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RoutesName.enterYourCodeView);
                        },
                      ),
                      CustomBtn(
                        text: 'Cancel',
                        width: double.infinity,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                    title: const Text(
                      '+20  0100 562 4567',
                    ),
                    content: const Text('Is this your correct phone number?'),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
