import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomLoginBtn extends StatelessWidget {
  const CustomLoginBtn({super.key, required this.logo, required this.text});

  final String logo;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          side: const BorderSide(
            color: Colors.grey,
            width: 0.2,
          ),
        ),
      ),
      onPressed: () {},
      child: IconButton(
        onPressed: () {},
        icon: Row(
          children: [
            const Spacer(),
            Image.asset(
              logo,
              width: 20,
            ),
            const Gap(12),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
