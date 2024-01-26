import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.6,
                height: 220,
                decoration: const BoxDecoration(
                  color: Color(0xFFF28739),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(275),
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.50,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xFF007AF5),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(275),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
