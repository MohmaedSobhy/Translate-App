import 'package:flutter/material.dart';
import 'package:translate_app/core/utils/app_colors.dart';
import 'package:translate_app/feature/home/presentation/widgets/country_widget.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

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
          const CountryWidget(
            languageName: 'English',
            imagePath: 'images/code.png',
            leftDirection: true,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.compare_arrows,
              color: Colors.black,
              size: 30,
            ),
          ),
          const CountryWidget(
            languageName: 'Spanish',
            imagePath: 'images/code.png',
            leftDirection: false,
          ),
        ],
      ),
    );
  }
}
