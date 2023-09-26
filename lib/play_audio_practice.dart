import 'package:audio_b/constants/colors.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayAudioPractice extends StatefulWidget {
  final String setSourceFile;
  final double totalDuration;
  const PlayAudioPractice({
    super.key,
    required this.setSourceFile,
    required this.totalDuration,
  });

  @override
  State<PlayAudioPractice> createState() => _PlayAudioPracticeState();
}

class _PlayAudioPracticeState extends State<PlayAudioPractice> {
  bool isPlaying = false;
  Duration duration = const Duration();
  Duration position = const Duration();
  AudioPlayer? player;
  @override
  void initState() {
    player = AudioPlayer();
    // player?.setSource(AssetSource('discipline.mp3'));
    player!.setSourceAsset(widget.setSourceFile);
    player?.onPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });
    player?.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
        print('Toal duration is :: ${duration.inSeconds}');
      });
    });
    player?.onPlayerComplete.listen((_) {
      setState(() {
        print('executing');
        isPlaying = false;
        position = const Duration(seconds: 0);
        print('resetting to zero');
        player!.seek(const Duration(seconds: 0));
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    player!.dispose();
    super.dispose();
  }

  void playPause() async {
    if (isPlaying) {
      player?.pause();
      print('pause executed');
      setState(() {
        isPlaying = false;
      });
    } else {
      if (position.inSeconds == 0) {
        print('start playing form zero');
        player!.play(
          AssetSource(widget.setSourceFile),
        );
      } else {
        if (position.inSeconds > 0) {
          print('playing from position above resume function');
          player!.play(
            AssetSource(widget.setSourceFile),
            position: position,
          );
          // once the audio is completed and the user slides the slider
          // then it starts playing from that position ,, bug resolved..
          // bug was once audio is completed and then if i slide the slider
          // and then play it didn't playing the audio, the above code
          // will resolve this bug/////////////////////////
        }
        print('resume player running');
        player?.resume();
      }
      setState(() {
        isPlaying = true;
      });
    }
  }

  void changeToSeconds(int sec) {
    Duration newDuration = Duration(seconds: sec);
    player!.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                position.toString().split('.')[0],
                style: const TextStyle(fontSize: 25),
              ),
              Text(
                duration.toString().split('.')[0],
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
          Slider(
            activeColor: pinkColor,
            inactiveColor: Colors.grey,
            value: position.inSeconds.toDouble(),
            min: 0.0,
            max: widget.totalDuration,
            onChanged: (value) {
              value.clamp(0.0, duration.inSeconds);
              setState(() {
                changeToSeconds(value.toInt());
                // value=value;
                position = Duration(seconds: value.toInt());
              });
            },
          ),
          IconButton(
            onPressed: playPause,
            icon: Icon(
              isPlaying
                  ? Icons.pause_circle_filled_sharp
                  : Icons.play_circle_fill_rounded,
              color: isPlaying ? pinkColor : Colors.grey,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
