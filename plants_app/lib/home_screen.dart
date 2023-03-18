import 'package:flutter/material.dart';
import 'package:plants_app/home_widget.dart';
import 'package:plants_app/plant_screen.dart';
import 'package:plants_app/plants_screen.dart';
import 'package:plants_app/providers/nav_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _pages = <Widget>[
    const HomeWidget(),
    const PlantsScreen(),
    const PlantScreen(),
    const Center(
      child: Text('Favorites'),
    )
  ];

  Widget navDestination(IconData icona) {
    return NavigationDestination(icon: Icon(icona), label: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[context.watch<NavigationProvider>().currentIndex],
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (index) =>
              context.read<NavigationProvider>().setPage(index),
          selectedIndex: context.watch<NavigationProvider>().currentIndex,
          destinations: [
            navDestination(Icons.home),
            navDestination(Icons.list),
            navDestination(Icons.shopping_cart_outlined),
            navDestination(Icons.favorite_outline),
          ]),
    );
  }
}
