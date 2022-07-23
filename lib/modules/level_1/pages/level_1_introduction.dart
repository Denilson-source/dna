import 'package:dna/core/utils/constants.dart';
import 'package:dna/core/widgets/content_image.dart';
import 'package:dna/core/widgets/content_video_player.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/content_text_spam.dart';

class Level1Introduction extends StatelessWidget {
  const Level1Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PARTIDA - Introdução'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text.rich(
            TextSpan(
              children: [
                ContentTextSpam.normal(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et bibendum lorem. Proin ullamcorper rutrum gravida. ',
                ),
                ContentTextSpam.bold(
                  'Aliquam erat',
                ),
                ContentTextSpam.normal(
                  ' Nam et bibendum lorem. Proin ullamcorper rutrum gravida.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const ContentImage(
            image: Assets.authBackground,
            title: 'Lorem ipsum dolor sit amet',
          ),
          const SizedBox(height: 12),
          const Text.rich(
            TextSpan(
              children: [
                ContentTextSpam.normal(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et bibendum lorem. Proin ullamcorper rutrum gravida. ',
                ),
                ContentTextSpam.bold(
                  'Aliquam erat',
                ),
                ContentTextSpam.normal(
                  ' Nam et bibendum lorem. Proin ullamcorper rutrum gravida.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const ContentVideoPlayer(
            video: Assets.authBackground,
            title: 'E so dar play!',
            points: 8,
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Vamos La',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Voltar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: const Size(150, 40),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
