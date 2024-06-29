import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hcc/config/routes/routes.dart';
import 'package:hcc/core/util/app_colors.dart';
import 'package:hcc/features/auth/Login/widgets/custom_login_btn.dart';
import 'package:hcc/features/auth/Login/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(20),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          const Gap(30),
          const Text(
            'welcome back!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'Use your credentials to log into your account',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(50),
          const CustomTextField(
            text: 'Enter your email',
            icon: Icons.person_outline,
          ),
          const Gap(18),
          const CustomTextField(
            text: 'Enter your password',
            obsecureText: true,
            icon: Icons.lock_outline,
          ),
          const Gap(15),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot your password?',
              style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Gap(18),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.homeView, (route) => false);
              },
              child: Text(
                'sign in',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const Gap(18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                height: 1.0,
                color: Colors.grey,
              ),
              const Text('OR'),
              Container(
                width: 150,
                height: 1.0,
                color: Colors.grey,
              ),
            ],
          ),
          const Gap(18),
          const CustomLoginBtn(
            logo: 'assets/images/google.png',
            text: 'Continue with Google',
          ),
          const Gap(12),
          const CustomLoginBtn(
            logo: 'assets/images/apple-logo.png',
            text: 'Continue with Apple',
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You do not have an account.'),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.registerView);
                },
                child: const Text(
                  'Go to register',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
