import 'package:flutter/material.dart';

class CountryWidget extends StatelessWidget {
  final String languageName, imagePath;
  final bool leftDirection;

  const CountryWidget({
    super.key,
    required this.imagePath,
    required this.languageName,
    this.leftDirection = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: leftDirection == true,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
        ),
        Text(
          languageName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        Visibility(
          visible: !leftDirection,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
        ),
      ],
    );
  }
}
