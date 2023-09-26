import 'package:audio_b/widgets/appbar.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/motivation_videos_text.dart';
import '../../plauing_audio_screen.dart';
import '../../widgets/detail_category_items.dart';

class AdventureDetailScreen extends StatelessWidget {
  const AdventureDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(
        title: 'Adventure',
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
                      title: 'The adventure of Isabella',
                      imagePath: 'assets/isabella.jpeg',
                      filePath: 'isaAdv.mp3',
                      totalDuration: 896.0,
                      getText: disciplineText,
                    ),
                  ),
                );
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/isabella.jpeg',
                title: 'The adventure of Isabella',
                getFontSize: 25,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayingAudioScreen(
                    title: 'Adventure Of a Little Drop',
                    imagePath: 'assets/drop.jpeg',
                    filePath: 'dropadve.mp3',
                    totalDuration: 610.0,
                    getText: focusedText,
                  ),
                ));
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/drop.jpeg',
                title: 'Adventure Of a Little Drop',
                getFontSize: 25,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayingAudioScreen(
                    title: 'Tom Sawyer and his adventure',
                    imagePath: 'assets/tom.jpeg',
                    filePath: 'tomadv.mp3',
                    totalDuration: 813.0,
                    getText: mindsetText,
                  ),
                ));
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/tom.jpeg',
                title: 'Tom Sawyer and his adventure',
                getFontSize: 22,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayingAudioScreen(
                    title: 'Adventures Of Akbar',
                    imagePath: 'assets/akbar.jpeg',
                    filePath: 'akbaradv.mp3',
                    totalDuration: 467.0,
                    getText: grindingText,
                  ),
                ));
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/akbar.jpeg',
                title: 'Adventures Of Akbar',
                getFontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
