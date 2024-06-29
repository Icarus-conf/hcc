import 'package:flutter/material.dart';
import 'package:hcc/core/util/app_colors.dart';
import 'package:hcc/features/home/widgets/cancel_view.dart';
import 'package:hcc/features/home/widgets/complete_view.dart';
import 'package:hcc/features/home/widgets/income_view.dart';

class PickAppiontmentView extends StatefulWidget {
  const PickAppiontmentView({super.key});

  @override
  State<PickAppiontmentView> createState() => _PickAppiontmentViewState();
}

class _PickAppiontmentViewState extends State<PickAppiontmentView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Appiontment',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                controller: tabController,
                tabs: const [
                  Tab(
                    text: 'Income',
                  ),
                  Tab(
                    text: 'Complete',
                  ),
                  Tab(
                    text: 'Cancel',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  IncomeView(),
                  CompleteView(),
                  CancelView(),
                ],
              ),
            ),
          ],
        ));
  }
}
