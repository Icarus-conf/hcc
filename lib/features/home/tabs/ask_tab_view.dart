import 'package:flutter/material.dart';
import 'package:hcc/features/home/widgets/another_custom_app_bar.dart';
import 'package:hcc/features/home/widgets/closed_inquiries_view.dart';
import 'package:hcc/features/home/widgets/open_inquiries_view.dart';

class AskTabView extends StatefulWidget {
  const AskTabView({super.key});

  @override
  State<AskTabView> createState() => _AskTabViewState();
}

class _AskTabViewState extends State<AskTabView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
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
    return Column(
      children: [
        const AnotherCustomAppBar(text: 'Ask your doctor'),
        Container(
          color: Colors.white,
          child: TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                text: 'Open inquiries',
              ),
              Tab(
                text: 'Closed inquiries',
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              OpenInquiriesView(),
              ClosedInquiriesView(),
            ],
          ),
        ),
      ],
    );
  }
}
