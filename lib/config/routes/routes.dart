import 'package:flutter/material.dart';
import 'package:hcc/features/auth/Login/login_view.dart';
import 'package:hcc/features/auth/register/register_view.dart';
import 'package:hcc/features/auth/register/widgets/enter_your_code_view.dart';
import 'package:hcc/features/auth/register/widgets/enter_your_passowrd_view.dart';
import 'package:hcc/features/home/home_view.dart';

import 'package:hcc/features/home/widgets/appiontment_view.dart';
import 'package:hcc/features/auth/register/widgets/enter_your_phone_view.dart';
import 'package:hcc/features/home/widgets/medical_file_view.dart';
import 'package:hcc/features/home/widgets/notifications_view.dart';
import 'package:hcc/features/home/widgets/personal_file_view.dart';
import 'package:hcc/features/home/widgets/pick_appiontment_view.dart';
import 'package:hcc/features/home/widgets/services_view.dart';
import 'package:hcc/features/splash/splash_view.dart';

class RoutesName {
  static const String splashView = '/';
  static const String loginView = 'loginView';
  static const String registerView = 'registerView';
  static const String homeView = 'homeView';
  static const String appiontmentView = 'appiontmentView';
  static const String personalFileView = 'personalFileView';
  static const String pickAppointmentView = 'pickAppointmentView';
  static const String askView = 'askView';
  static const String accountSettingsView = 'accountSettingsView';
  static const String enterYourPhoneView = 'enterYourPhoneView';
  static const String enterYourCodeView = 'enterYourCodeView';
  static const String enterYourPasswordView = 'enterYourPasswordView';
  static const String medicalFileView = 'medicalFileView';
  static const String servicesView = 'servicesView';
  static const String notifitcationsView = 'notifitcationsView';
}

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );

      case RoutesName.loginView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );

      case RoutesName.registerView:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );

      case RoutesName.enterYourPhoneView:
        return MaterialPageRoute(
          builder: (context) => const EnterYourPhoneView(),
        );
      case RoutesName.enterYourCodeView:
        return MaterialPageRoute(
          builder: (context) => const EnterYourCodeView(),
        );

      case RoutesName.enterYourPasswordView:
        return MaterialPageRoute(
          builder: (context) => const EnterYourPassowrdView(),
        );

      case RoutesName.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );

      case RoutesName.appiontmentView:
        return MaterialPageRoute(
          builder: (context) => const AppiontmentView(),
        );

      case RoutesName.personalFileView:
        return MaterialPageRoute(
          builder: (context) => const PersonalFileView(),
        );

      case RoutesName.pickAppointmentView:
        return MaterialPageRoute(
          builder: (context) => const PickAppiontmentView(),
        );

      case RoutesName.askView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(
            initialIndex: 2,
          ),
        );
      case RoutesName.accountSettingsView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(
            initialIndex: 3,
          ),
        );

      case RoutesName.medicalFileView:
        return MaterialPageRoute(
          builder: (context) => const MedicalFileView(),
        );

      case RoutesName.servicesView:
        return MaterialPageRoute(
          builder: (context) => const ServicesView(),
        );

      case RoutesName.notifitcationsView:
        return MaterialPageRoute(
          builder: (context) => const NotificationsView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() {
    return const Scaffold(
      body: Center(
        child: Text('Route not found!'),
      ),
    );
  }
}
