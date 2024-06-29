import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/config/routes/routes.dart';
import 'package:hcc/features/home/widgets/custom_btn.dart';

class EnterYourPasswordBodyView extends StatelessWidget {
  const EnterYourPasswordBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const Text(
            'Create password',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            'Passwords must be at least 8 characters long includes letters, numbers and symbols',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
          const Gap(25),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: const Icon(Icons.hide_source_sharp),
              hintText: 'Enter your password',
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
          const Gap(12),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: const Icon(Icons.hide_source_sharp),
              hintText: 'Confirm your password',
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
              Navigator.pushNamed(context, RoutesName.loginView);
            },
          ),
        ],
      ),
    );
  }
}
