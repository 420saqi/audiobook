import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DetailCategoryItem extends StatelessWidget {
  const DetailCategoryItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.getFontSize,
  });
  final double getFontSize;
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 15,
          ),
          child: Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 35,
          right: 40,
          child: Text(
            title,
            style: TextStyle(
              color: whiteColor,
              fontSize: getFontSize,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true,
          ),
        )
      ],
    );
  }
}
