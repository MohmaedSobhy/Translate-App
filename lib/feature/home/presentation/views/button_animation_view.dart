import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_colors.dart';
import 'package:translate_app/feature/home/data/model/language.dart';
import 'package:translate_app/feature/home/presentation/widgets/country_widget.dart';

class ButtonAnimationView extends StatefulWidget {
  const ButtonAnimationView({super.key});

  @override
  State<ButtonAnimationView> createState() => _ButtonAnimationViewState();
}

class _ButtonAnimationViewState extends State<ButtonAnimationView>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field
  late AnimationController animationController;

  LanguageModel firstLanguage = LanguageModel(
      code: 'en', image: 'images/egypt.png', languageName: 'Egypt');
  LanguageModel secondLanguage = LanguageModel(
      code: 'en', image: 'images/argentine.png', languageName: 'Turkey');

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(microseconds: 500),
      vsync: this,
    );
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.purple.withOpacity(0.09),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              return FadeTransition(
                opacity: animationController,
                child: CountryWidget(
                  languageName: secondLanguage.languageName,
                  imagePath: secondLanguage.image,
                ),
              );
            },
          ),
          IconButton(
            onPressed: () {
              _startAnimation();
              swapContent();
              setState(() {});
            },
            icon: const Icon(
              Icons.compare_arrows,
              color: Colors.black,
              size: 30,
            ),
          ),
          AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              return FadeTransition(
                opacity: animationController,
                child: CountryWidget(
                  languageName: firstLanguage.languageName,
                  imagePath: firstLanguage.image,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _startAnimation() {
    animationController.reset(); // Reset the animation to its initial state
    animationController.reverse();
    animationController.reset();
    animationController.forward(); // Start the animation from the beginning
  }

  void swapContent() {
    firstLanguage.replaceContent(secondLanguage);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
