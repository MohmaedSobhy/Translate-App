import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_assest.dart';
import 'package:translate_app/feature/splash/presentation/views/header_view.dart';

import '../../../../core/utils/app_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderView(),
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(AppAssests.appLogo),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppString.translateOnToGo,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
