import 'package:flutter/material.dart';

class DrawerItem {
  String? text;
  IconData? icon;

  DrawerItem({this.icon, this.text});
}

List<DrawerItem> drawerItems = [
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Appiontment',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Medical Life',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Approvals for treatment',
  ),
  DrawerItem(
    icon: Icons.chat_outlined,
    text: 'Ask your doctor',
  ),
  DrawerItem(
    icon: Icons.notifications_outlined,
    text: 'Notifications',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Branches',
  ),
  DrawerItem(
    icon: Icons.support_outlined,
    text: 'Our Service',
  ),
  DrawerItem(
    icon: Icons.contact_emergency_outlined,
    text: 'Our team',
  ),
  DrawerItem(
    icon: Icons.star_outline_outlined,
    text: 'Ratings',
  ),
  DrawerItem(
    icon: Icons.contact_emergency_outlined,
    text: 'Connect with us',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Sessions',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Customer Service',
  ),
  DrawerItem(
    icon: Icons.calendar_month,
    text: 'Video Library',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Articles',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Pictures',
  ),
  DrawerItem(
    icon: Icons.help_outlined,
    text: 'Help',
  ),
  DrawerItem(
    icon: Icons.calendar_month_outlined,
    text: 'Terms and Conditions',
  ),
  DrawerItem(
    icon: Icons.settings_outlined,
    text: 'Account Settings',
  ),
];
