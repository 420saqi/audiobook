import 'package:audio_b/plauing_audio_screen.dart';
import 'package:audio_b/widgets/appbar.dart';
import 'package:audio_b/widgets/detail_category_items.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/motivation_videos_text.dart';

class MotivationDetailScreen extends StatelessWidget {
  const MotivationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ReusableAppBar(
          title: 'Motivation',
        ),
        backgroundColor: pinkColor.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PlayingAudioScreen(
                        title: 'Discipline',
                        imagePath: 'assets/discipline.jpeg',
                        filePath: 'discipline.mp3',
                        totalDuration: 527.0,
                        getText: disciplineText,
                      ),
                    ),
                  );
                },
                child: const DetailCategoryItem(
                  imagePath: 'assets/discipline.jpeg',
                  title: 'Discipline',
                  getFontSize: 40,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlayingAudioScreen(
                      title: 'Stay Focused',
                      imagePath: 'assets/focused.jpeg',
                      filePath: 'focused.mp3',
                      totalDuration: 500.0,
                      getText: focusedText,
                    ),
                  ));
                },
                child: const DetailCategoryItem(
                  imagePath: 'assets/focused.jpeg',
                  title: 'Stay Focused',
                  getFontSize: 40,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlayingAudioScreen(
                      title: 'Have Mindset',
                      imagePath: 'assets/mindset.jpg',
                      filePath: 'mindset.mp3',
                      totalDuration: 553.0,
                      getText: mindsetText,
                    ),
                  ));
                },
                child: const DetailCategoryItem(
                  imagePath: 'assets/mindset.jpg',
                  title: 'Have Mindset',
                  getFontSize: 40,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlayingAudioScreen(
                      title: 'Keep Grinding',
                      imagePath: 'assets/grinding.jpg',
                      filePath: 'grinding.mp3',
                      totalDuration: 511.0,
                      getText: grindingText,
                    ),
                  ));
                },
                child: const DetailCategoryItem(
                  imagePath: 'assets/grinding.jpg',
                  title: 'Keep Grinding',
                  getFontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
