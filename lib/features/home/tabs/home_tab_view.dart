import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hcc/config/routes/routes.dart';

import 'package:hcc/features/home/widgets/category_card.dart';

import 'package:hcc/features/home/widgets/custom_app_bar.dart';
import 'package:hcc/features/home/model/category_model.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.notifitcationsView);
          },
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 20,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, categories[index].routeName ?? "");
                },
                child: CategoryCard(
                  text: categories[index].text ?? '',
                  imagePath: categories[index].imagePath ?? '',
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ),
      ],
    );
  }
}
