import 'package:flutter/material.dart';
import 'package:mpp_test/models/plant.dart';

/// List that display all products with specified filtering
/// Input : List<Plant>
/// Output :
///   ListView
///     Container + Material for background and radius (radius is adjustable in {radius} in build method)
///     Stack for Texts and images
class ProductsList extends StatelessWidget {
  final List<Plant> plants;
  const ProductsList({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 30;
    return ListView.builder(
      itemCount: plants.length,
      itemBuilder: (context, index) =>

          /// Link to the Product Page
          GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            '/product-detail',
            arguments: plants[index],
          );
        },

        /// General Container with Size and elevation
        child: Container(
          margin: EdgeInsets.all(10),
          height: 400,
          child: Material(
            color: Theme.of(context).colorScheme.primary,
            elevation: 5,
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            child: Stack(
              children: [
                /// 1st child
                /// Product Image
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.white70,
                    image: DecorationImage(
                      image: AssetImage('assets/images/plant.png'),
                    ),
                  ),
                ),

                /// 2nd Child
                /// Product Text
                Container(
                  padding: EdgeInsets.all(20),
                  // color: Colors.white70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plants[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        plants[index].localization,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                /// 3rd Child
                /// Product Price
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(105, 147, 112, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(radius),
                        bottomRight: Radius.circular(radius),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${plants[index].price.toStringAsFixed(0)}€',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
