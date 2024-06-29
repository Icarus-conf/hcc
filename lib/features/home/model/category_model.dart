import 'package:hcc/config/routes/routes.dart';

class CategoryModel {
  String? text;
  String? imagePath;
  String? routeName;
  CategoryModel({this.text, this.imagePath, this.routeName});
}

List<CategoryModel> servicesItems = [
  CategoryModel(
    text: 'Examination',
    imagePath: 'assets/images/examination.png',
  ),
  CategoryModel(
    text: 'Ultrasound',
    imagePath: 'assets/images/scan.png',
  ),
  CategoryModel(
    text: 'Chamotheropy',
    imagePath: 'assets/images/medal.png',
  ),
];

List<CategoryModel> categories = [
  CategoryModel(
    text: 'Appiontment',
    imagePath: 'assets/svg/appiontment.svg',
    routeName: RoutesName.pickAppointmentView,
  ),
  CategoryModel(
    text: 'Medical file',
    imagePath: 'assets/svg/medical.svg',
    routeName: RoutesName.medicalFileView,
  ),
  CategoryModel(
    text: 'Ask your doctor',
    imagePath: 'assets/svg/ask.svg',
    routeName: RoutesName.askView,
  ),
  CategoryModel(
    text: 'customer service',
    imagePath: 'assets/svg/customer.svg',
    routeName: 'pickAppointmentView',
  ),
  CategoryModel(
    text: 'Account settings',
    imagePath: 'assets/svg/account.svg',
    routeName: RoutesName.accountSettingsView,
  ),
  CategoryModel(
    text: 'Services',
    imagePath: 'assets/svg/services.svg',
    routeName: RoutesName.servicesView,
  ),
];

List<CategoryModel> servicesList = [
  CategoryModel(
    text: 'Chemontherapy Department',
    imagePath: 'assets/images/services/1',
  ),
  CategoryModel(
    text: 'Radiotherapy Department',
    imagePath: 'assets/images/services/2',
  ),
  CategoryModel(
    text: 'Hemathology and Bone Marrow',
    imagePath: 'assets/images/services/3',
  ),
  CategoryModel(
    text: 'Nuclear Therapy Department',
    imagePath: 'assets/images/services/4',
  ),
  CategoryModel(
    text: 'Pain Clinic',
    imagePath: 'assets/images/services/5',
  ),
  CategoryModel(
    text: 'Laboratory Unit',
    imagePath: 'assets/images/services/6',
  ),
  CategoryModel(
    text: 'Nutrition Clinic',
    imagePath: 'assets/images/services/7',
  ),
  CategoryModel(
    text: 'Psychology Clininc',
    imagePath: 'assets/images/services/8',
  ),
  CategoryModel(
    text: 'Psychiatric Clinic',
    imagePath: 'assets/images/services/9',
  ),
  CategoryModel(
    text: 'Genetic Testing Clinic',
    imagePath: 'assets/images/services/10',
  ),
  CategoryModel(
    text: 'Early Detection Clinic',
    imagePath: 'assets/images/services/11',
  ),
  CategoryModel(
    text: 'Pathology Unit',
    imagePath: 'assets/images/services/12',
  ),
  CategoryModel(
    text: 'Immunotherapy',
    imagePath: 'assets/images/services/13',
  ),
  CategoryModel(
    text: 'Precision medicine',
    imagePath: 'assets/images/services/14',
  ),
  CategoryModel(
    text: 'Clinical pharmacy unit',
    imagePath: 'assets/images/services/15',
  ),
  CategoryModel(
    text: 'Radiology And Sampling',
    imagePath: 'assets/images/services/16',
  ),
];
