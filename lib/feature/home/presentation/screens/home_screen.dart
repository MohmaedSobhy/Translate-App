import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_string.dart';
import 'package:translate_app/feature/home/presentation/views/button_animation_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.appName),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02,
        ),
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ButtonView(),
          ],
        ),
      ),
    );
  }
}
