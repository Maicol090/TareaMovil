import 'package:app1/core/styles.dart';
import 'package:app1/screens/landing_tabs.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue, gradient: AppStyles.mainBgGradient),
        child: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.maxFinite),
            Image.asset("assets/images/mainbg.png", width: 260),
            Container(child: LandingTabs()),
          ],
        )),
      ),
    );
  }
}
