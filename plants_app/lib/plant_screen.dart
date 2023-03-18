import 'dart:math';

import 'package:flutter/material.dart';

class PlantScreen extends StatelessWidget {
  const PlantScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xfff2f7fe),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/vase.png',
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Prickly pear',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text('21 \$',
                          style: Theme.of(context).textTheme.headlineMedium),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.orange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4.8',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Select size',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(10, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Chip(
                            side: BorderSide.none,
                            backgroundColor: index == 2
                                ? Colors.brown
                                : const Color(0xfff3f3f3),
                            label: Text(
                              '${(Random().nextInt(9))} Inch',
                              style: TextStyle(
                                color: index == 2 ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Text(
                    'Select size',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.brown,
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text('Add to cart'),
                            )),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
