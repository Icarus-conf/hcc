import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hcc/config/routes/routes.dart';
import 'package:hcc/features/home/widgets/custom_btn.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Create an account',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Gap(12),
          const Text(
            'Introduce yourself',
            style: TextStyle(
              fontSize: 14,
              color: Colors.lightBlue,
            ),
          ),
          const Gap(25),
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 30,
                color: Colors.lightBlue.withOpacity(0.5),
              ),
            ),
          ),
          const Gap(25),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your first name',
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
            decoration: InputDecoration(
              hintText: 'Enter your last name',
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
            decoration: InputDecoration(
              hintText: 'Enter your email',
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
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              const Text('I agree to our terms and conditions'),
            ],
          ),
          const Spacer(),
          CustomBtn(
            text: 'continue',
            width: double.infinity,
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.enterYourPhoneView);
            },
          ),
        ],
      ),
    );
  }
}
