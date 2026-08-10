import 'package:flutter/material.dart';
import 'package:porfolio_shithi/screens/home_page.dart';
import 'core/theme.dart';


void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shithi Roy",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home:  HomePage(),
    );
  }
}