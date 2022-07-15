import 'package:flutter/material.dart';

class Level1Card extends StatelessWidget {
  const Level1Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 16, bottom: 24),
      color: Theme.of(context).canvasColor,
      elevation: 12,
      child: Container(
        color: Colors.black.withOpacity(0.40),
        height: 200,
        child: Stack(
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
