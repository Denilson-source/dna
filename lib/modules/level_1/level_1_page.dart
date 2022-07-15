import 'package:dna/core/widgets/custom_scrollbar.dart';
import 'package:dna/modules/level_1/widget/level_1_card.dart';
import 'package:flutter/material.dart';

class Level1Page extends StatefulWidget {
  const Level1Page({Key? key}) : super(key: key);

  @override
  State<Level1Page> createState() => _Level1PageState();
}

class _Level1PageState extends State<Level1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PARTIDA'),
      ),
      body: CustomScrollbar(
        child: ListView(
          padding: const EdgeInsets.only(top: 24),
          children: const [
            Level1Card(),
            Level1Card(),
            Level1Card(),
            Level1Card(),
            Level1Card(),
            Level1Card(),
          ],
        ),
      ),
    );
  }
}
