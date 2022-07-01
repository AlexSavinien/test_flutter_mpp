import 'package:flutter/material.dart';

import '../models/plant.dart';

class ProductInfoFrame extends StatelessWidget {
  const ProductInfoFrame({
    Key? key,
    required this.plant,
    required this.usage,
    required this.imageAsset,
  }) : super(key: key);

  final Plant plant;
  final String usage;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.white.withOpacity(0.2),
        child: Column(
          children: [
            Container(
              height: 20,
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              usage,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'In ${plant.water} days',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
