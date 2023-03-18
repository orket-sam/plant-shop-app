import 'package:flutter/material.dart';

class PlantsScreen extends StatelessWidget {
  const PlantsScreen({super.key});

  static const categories = ['All', 'Cacti', 'In pots', 'Dried Flowers'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Plants'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        physics: const BouncingScrollPhysics(),
        children: [
          Text(
            'Plant \n is for room',
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Chip(
                          side: BorderSide.none,
                          backgroundColor: categories.indexOf(e) == 2
                              ? Colors.brown
                              : const Color(0xfff3f3f3),
                          label: Text(
                            e,
                            style: TextStyle(
                              color: categories.indexOf(e) == 2
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
