import 'package:flutter/material.dart';

import '../models/plant.dart';
import '../widgets/product_app_bar.dart';

/// The screen is composed of :
/// - An AppBar on top that contain product's quick infos about usage
/// - A TabView behind that contain product's detailed infos with a FAB to change schedule
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Plant plant = ModalRoute.of(context)!.settings.arguments as Plant;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plant.localization,
              style: TextStyle(fontSize: 15, color: Colors.white54),
            ),
            Text(
              plant.title,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        elevation: 0,
      ),

      /// ProductAppBar contain the AppBar and his child : the ProductTabBarView
      body: ProductAppBar(plant: plant),

      /// Floating Action Button Initialization, Content and Styling
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Change Schedule',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
