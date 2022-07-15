import 'package:flutter/material.dart';

import '../../../routes.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.enabled}) : super(key: key);

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      color: Colors.pink[300],
      height: 180,
      child: Stack(
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.level1);
              },
            ),
          ),
          if (!enabled)
            Container(
              color: Colors.black.withOpacity(0.2),
              child: const Center(
                child: Icon(Icons.lock, size: 64),
              ),
            ),
        ],
      ),
    );
  }
}
