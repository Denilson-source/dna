import 'package:flutter/material.dart';

class ContentImage extends StatelessWidget {
  const ContentImage({Key? key, required this.image, this.title}) : super(key: key);

  final String image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(0.3),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            if (title != null) ...[
              Text(
                title!,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 16),
            ],
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
