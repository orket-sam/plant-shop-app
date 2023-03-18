import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        // fit: StackFit.expand,
        children: [
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2,
                    child: ClipPath(
                      clipper: CustomClip(),
                      child: Image.asset(
                        'assets/images/home.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Add a flower to your \nfavorites',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'so that you don\'t lose \n a new friend for home',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                  ),
                  const Spacer(),
                ],
              ),
              ClipPath(
                clipper: CustomClip(),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  color: Colors.black87.withOpacity(0.3),
                ),
              )
            ],
          ),
          Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 50,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final h = size.height;
    final w = size.width;
    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w / 2, h - 40, w, h);
    path.lineTo(w, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
