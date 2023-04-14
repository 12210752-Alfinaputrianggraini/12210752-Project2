import 'package:flutter/material.dart';
import 'package:pendataanwarga/providers/dashboard_provider.dart';
import 'package:pendataanwarga/views/dashboard/dashboard_view.dart';
import 'package:pendataanwarga/views/login_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (bc) => DashboardProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaPanelProvider()),
      ],
      builder: (context, Widget) {
        return const MaterialApp(home: LoginView());
      }));
}
