import 'package:flutter/material.dart';

class PlantWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int price;
  const PlantWidget({
    required this.imageUrl,
    required this.price,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 130,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 80,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xfff2f7fe),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/$imageUrl.png',
                  fit: BoxFit.fitHeight,
                  // height: 100,
                ),
                Positioned(
                  right: 10,
                  bottom: 8,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: IconButton(
                        padding: null,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                          color: Color(0xfff5ba55),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('4.8',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xfff5ba55),
                                )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'From 3 Inch',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('$price \$')
              ],
            ),
          )
        ],
      ),
    );
  }
}
