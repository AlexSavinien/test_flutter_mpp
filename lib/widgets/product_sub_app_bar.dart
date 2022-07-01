import 'package:flutter/material.dart';

import '../models/plant.dart';
import 'product_info_frame.dart';

class ProductSubAppBar extends StatelessWidget {
  const ProductSubAppBar({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.white.withOpacity(0.2),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Add Photo',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ProductInfoFrame(
                      plant: plant,
                      imageAsset: 'assets/icons/watering_can.png',
                      usage: 'Water',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductInfoFrame(
                      plant: plant,
                      usage: 'Fertilizing',
                      imageAsset: 'assets/icons/plant.png',
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Image.asset(
                'assets/images/plant.png',
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
