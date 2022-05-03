import 'package:activities_app/page/activities_page.dart';
import 'package:activities_app/page/home_page.dart';
import 'package:flutter/material.dart';

class PageConstant {
  static String homePage = '/';
  static String activitiesPage = '/activitiPage';
}

Map<String, Widget Function(BuildContext)> routesApp = <String, WidgetBuilder>{
  PageConstant.activitiesPage: (context) => const ActivitiesPage(),
  PageConstant.homePage: (context) => const HomePage(),
};
