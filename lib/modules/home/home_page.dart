import 'package:dna/modules/home/widgets/home_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            'Maria Santos',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text('Gerente de Projetos'),
          leading: Container(
            height: 44,
            width: 44,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          trailing: Container(
            width: 80,
            height: 40,
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56 + 16 + 16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('32 pontos'),
                    Text(
                      '100 pontos',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final total = constraints.maxWidth;
                    final percent = 0.3 * total;

                    return Stack(
                      children: [
                        Container(
                          height: 22,
                          width: total,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        Container(
                          height: 22,
                          width: percent,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            gradient: LinearGradient(
                              colors: [Colors.pink[300]!, Colors.purple],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: const [
          HomeCard(enabled: true),
          HomeCard(enabled: true),
          HomeCard(enabled: false),
          HomeCard(enabled: false),
          HomeCard(enabled: false),
        ],
      ),
    );
  }
}
