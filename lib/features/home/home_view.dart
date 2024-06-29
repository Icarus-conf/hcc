import 'package:flutter/material.dart';
import 'package:hcc/config/routes/routes.dart';

import 'package:hcc/core/util/app_colors.dart';
import 'package:hcc/features/home/tabs/account_tab_view.dart';
import 'package:hcc/features/home/tabs/ask_tab_view.dart';
import 'package:hcc/features/home/tabs/category_tab_view.dart';
import 'package:hcc/features/home/tabs/home_tab_view.dart';
import 'package:hcc/features/home/widgets/custom_drawer.dart';

class HomeView extends StatefulWidget {
  final int initialIndex;
  const HomeView({super.key, this.initialIndex = 0});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> tabs = [
    const HomeTabView(),
    const CategoryTabView(),
    const AskTabView(),
    const AccountTabView(),
  ];

  int selectedTab = 0;

  @override
  void initState() {
    selectedTab = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      extendBody: true,
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: Colors.white,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        height: 100,
        padding: EdgeInsets.zero,
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedTab,
          onTap: (value) {
            setState(() {
              selectedTab = value;
            });
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.house_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Ask your Doctor'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Account'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesName.appiontmentView);
        },
        backgroundColor: Colors.green.shade800,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: const Icon(
          Icons.calendar_month,
          color: Colors.white,
        ),
      ),
      body: tabs[selectedTab],
    );
  }
}
