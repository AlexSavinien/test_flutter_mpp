import 'package:flutter/material.dart';

import '../models/plant.dart';
import '../widgets/product_app_bar.dart';

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
              style: TextStyle(fontSize: 15, color: Colors.black26),
            ),
            Text(
              plant.title,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: ProductAppBar(plant: plant),
    );
  }
}
