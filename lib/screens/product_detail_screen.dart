import 'package:flutter/material.dart';

import '../models/plant.dart';
import '../widgets/product_detail_tab_bar.dart';
import '../widgets/product_sub_app_bar.dart';

/// The screen is composed of :
/// - An AppBar on top that display the product name and allow to navigate back to main screen
/// - A Body with a Column that contain
///   - The product (Sub)AppBar (that containt quick info about product and a button to add photo)
///   - The product Detail Tab Bar that contain :
///     - A TabBar to select more detailed infos
///     - TabViews that contain product's detailed infos
class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
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

      /// Body : The Product SubAppBar and The TabBar
      body: Column(
        children: [
          ProductSubAppBar(plant: plant),
          ProductDetailTabBar(plant: plant),
        ],
      ),

      /// Floating Action Button Initialization, Content and Styling
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          child: Text(
            'Change Schedule',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
