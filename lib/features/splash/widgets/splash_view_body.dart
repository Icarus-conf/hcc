import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Align(
          alignment: const AlignmentDirectional(0, -1.2),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.5),
            ),
            child: Image.asset(
              'assets/images/top_side.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, 1.2),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.5),
            ),
            child: Image.asset(
              'assets/images/bottom_side.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Image.asset(
          'assets/images/splash_logo.png',
        ),
      ],
    );
  }
}
