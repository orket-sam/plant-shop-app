import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_app/plant_widget.dart';

class PlantsScreen extends StatelessWidget {
  const PlantsScreen({super.key});

  static const categories = ['All', 'Cacti', 'In pots', 'Dried Flowers'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Plants',
          style: TextStyle(
              fontSize: Theme.of(context).appBarTheme.titleTextStyle?.fontSize,
              fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                children: const [
                  Text(
                    'Popularity',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 15,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              // physics: const BouncingScrollPhysics(),
              children: [
                const PlantWidget(
                    imageUrl: 'vase', price: 21, title: 'Prickly Pear'),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Color(0xfff2f7fe),
                              Color(0xfffbeaeb),
                            ])),
                      ),
                      Positioned(
                        top: 30,
                        left: 10,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Free shipping',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'When ordering  ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xfff5ba55),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 4),
                                        child: Text(
                                          'From 40 \$',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: SvgPicture.asset(
                          'assets/svgs/delivery.svg',
                          height: 120,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PlantWidget(
                    imageUrl: 'plant', price: 20, title: 'Echeveria'),
                const PlantWidget(
                    imageUrl: 'plant2', price: 20, title: 'Green leafed')
              ],
            ))
          ],
        ),
      ),
    );
  }
}
