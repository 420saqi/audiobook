import 'package:audio_b/constants/colors.dart';
import 'package:audio_b/play_audio_practice.dart';
import 'package:audio_b/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayingAudioScreen extends StatefulWidget {
  final String title;
  final String imagePath;
  final String filePath;
  final double totalDuration;
  final String getText;
  PlayingAudioScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.filePath,
    required this.totalDuration,
    required this.getText,
  });

  @override
  State<PlayingAudioScreen> createState() => _PlayingAudioScreenState();
}

class _PlayingAudioScreenState extends State<PlayingAudioScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ReusableAppBar(
          title: widget.title,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: PlayAudioPractice(
                  setSourceFile: widget.filePath,
                  totalDuration: widget.totalDuration,
                ),
              ),
              const Text(
                'Story Text',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: pinkColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Card(
                    child: Text(
                      widget.getText,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
