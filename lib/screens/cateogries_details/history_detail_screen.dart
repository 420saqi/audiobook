import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/motivation_videos_text.dart';
import '../../plauing_audio_screen.dart';
import '../../widgets/appbar.dart';
import '../../widgets/detail_category_items.dart';

class FantasyDetailScreen extends StatelessWidget {
  const FantasyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(
        title: 'Fantasy',
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
                      title: 'The Poor Cobbler and Magician',
                      imagePath: 'assets/cobbler.jpeg',
                      filePath: 'cobblerfantasy.mp3',
                      totalDuration: 622.0,
                      getText: disciplineText,
                    ),
                  ),
                );
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/cobbler.jpeg',
                title: '',
                getFontSize: 22,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayingAudioScreen(
                    title: 'The Secret Stones',
                    imagePath: 'assets/stones.jpeg',
                    filePath: 'secretstonesfan.mp3',
                    totalDuration: 2439.0,
                    getText: focusedText,
                  ),
                ));
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/stones.jpeg',
                title: '',
                getFontSize: 40,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayingAudioScreen(
                    title: 'The Golden Bread',
                    imagePath: 'assets/bread.jpeg',
                    filePath: 'breadfantasy.mp3',
                    totalDuration: 752.0,
                    getText: mindsetText,
                  ),
                ));
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/bread.jpeg',
                title: '',
                getFontSize: 30,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayingAudioScreen(
                    title: 'The Lazy Boy',
                    imagePath: 'assets/lazyboy.jpeg',
                    filePath: 'lazyboyfantasy.mp3',
                    totalDuration: 704.0,
                    getText: grindingText,
                  ),
                ));
              },
              child: const DetailCategoryItem(
                imagePath: 'assets/lazyboy.jpeg',
                title: 'The Lazy Boy',
                getFontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
