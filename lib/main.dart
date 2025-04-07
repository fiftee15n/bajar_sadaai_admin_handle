import 'package:flutter/material.dart';
import 'screen/launch_screen.dart';
import 'screen/login_screen_admin.dart';
import 'screen/login_screen_fieldteam.dart';
import 'screen/Admin_dashboard.dart';
import 'screen/checklist.dart';
import 'screen/statistics_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/launch',
      routes: {
        '/launch': (context) =>  LaunchScreen(),
        '/login': (context) =>  LoginScreen(),
        '/dashboard': (context) =>  DashboardScreen (),
        '/checklist': (context) =>   VegetableChecklistPage(),
        '/statistics': (context) =>  VegetableStatisticsScreen(),
      },
    );
  }
}