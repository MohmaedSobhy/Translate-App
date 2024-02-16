import 'package:flutter/material.dart';

class CountryWidget extends StatelessWidget {
  final String languageName, imagePath;

  const CountryWidget({
    super.key,
    required this.imagePath,
    required this.languageName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(6),
          child: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        Text(
          languageName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
