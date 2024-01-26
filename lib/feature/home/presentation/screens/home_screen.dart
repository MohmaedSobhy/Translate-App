import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_string.dart';
import 'package:translate_app/feature/home/presentation/views/home_body_view.dart';

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
      body: const HomeBodyView(),
    );
  }
}
