import 'package:flutter/material.dart';
import 'button_animation_view.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.02,
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ButtonAnimationView(),
        ],
      ),
    );
  }
}
