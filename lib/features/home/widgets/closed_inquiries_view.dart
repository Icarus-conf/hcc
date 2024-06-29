import 'package:flutter/material.dart';
import 'package:hcc/core/util/app_colors.dart';

class ClosedInquiriesView extends StatelessWidget {
  const ClosedInquiriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            color: Colors.white,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '24-01-2024 05:35',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                const Text(
                  'Fifth Settlment Branch',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit?',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Container(
            margin: const EdgeInsets.all(12),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Create a new inquiry',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
