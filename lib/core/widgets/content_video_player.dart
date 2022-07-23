import 'package:flutter/material.dart';

class ContentVideoPlayer extends StatelessWidget {
  const ContentVideoPlayer({
    Key? key,
    required this.video,
    this.title,
    this.points,
  }) : super(key: key);

  final String video;
  final String? title;
  final int? points;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const SizedBox(height: 16),
        ],
        Stack(
          children: [
            Container(
              color: Colors.black,
              height: 200,
              width: double.infinity,
            ),
            const Positioned.fill(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('[VIDEO MISSAO]'),
                ),
              ),
            ),
          ],
        ),
        if (points != null)
          Align(
            alignment: Alignment.centerRight,
            child: Chip(
              label: Text('$points pts.'),
              backgroundColor: Colors.black,
            ),
          ),
      ],
    );
  }
}
