import 'package:audio_b/constants/colors.dart';
import 'package:audio_b/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class AudioBooksCategoriesScreen extends StatelessWidget {
  const AudioBooksCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pinkColor.shade900,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 10,
              ),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: pinkColor,
                ),
                child: const Text(
                  'Categories',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Expanded(
              child: CategoriesList(),
            ),
          ],
        ),
      ),
    );
  }
}
