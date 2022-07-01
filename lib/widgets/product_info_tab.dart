import 'package:flutter/material.dart';

import '../models/plant.dart';

class ProductInfoTab extends StatelessWidget {
  const ProductInfoTab({
    Key? key,
    required this.plant,
    required this.title,
    required this.subtitle,
    this.substringIn = 0,
    this.subtringOut = 0,
  }) : super(key: key);

  final Plant plant;
  final int substringIn;
  final int subtringOut;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(plant.description.substring(substringIn, subtringOut)),
          ],
        ),
      ),
    );
  }
}
