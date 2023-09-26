import 'package:audio_b/screens/cateogries_details/adventure_detail_screen.dart';
import 'package:audio_b/screens/cateogries_details/history_detail_screen.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/cateogries_details/motivation_detail_screen.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});

  final List<String> categoryImages = [
    'assets/motivation.png',
    'assets/adventure.png',
    'assets/history.png',
  ];
  final List<String> categoryTitle = [
    'Motivation',
    'Adventure',
    'Fantasy',
  ];
  final List screens = [
    const MotivationDetailScreen(),
    const AdventureDetailScreen(),
    const FantasyDetailScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(10),
          highlightColor: pinkColor,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => screens[index],
              ),
            );
          },
          child: Stack(
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
                      categoryImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 35,
                right: 40,
                child: Text(
                  categoryTitle[index],
                  style: const TextStyle(
                    color: whiteColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
