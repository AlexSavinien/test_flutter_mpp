import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../models/plant.dart';
import 'product_info_tab.dart';

class ProductDetailTabView extends StatelessWidget {
  ProductDetailTabView({
    Key? key,
    required this.plant,
  }) : super(key: key);
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'About',
    ),
    Tab(
      text: 'Tips',
    ),
    Tab(
      text: 'Activity',
    ),
  ];
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            height: 490,

            /// Scaffold and DefaultTabController for TabBarView
            child: DefaultTabController(
              length: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                child: Scaffold(
                  backgroundColor: Colors.white,

                  /// AppBar Styling
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    toolbarHeight: 0,
                    automaticallyImplyLeading: false,
                    bottom: TabBar(
                      tabs: myTabs,
                      indicator: DotIndicator(
                        color: Theme.of(context).colorScheme.secondary,
                        distanceFromCenter: 16,
                        radius: 3,
                        paintingStyle: PaintingStyle.fill,
                      ),
                      unselectedLabelColor: Colors.black,
                      labelColor: Theme.of(context).colorScheme.secondary,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  /// TabBarView Content and Styling
                  body: TabBarView(children: [
                    ProductInfoTab(
                      plant: plant,
                      subtitle: 'Light',
                      title: 'Care',
                      substringIn: 0,
                      subtringOut: 400,
                    ),
                    ProductInfoTab(
                      plant: plant,
                      subtitle: 'Light',
                      title: 'Care',
                      substringIn: 0,
                      subtringOut: 400,
                    ),
                    ProductInfoTab(
                      plant: plant,
                      subtitle: 'Light',
                      title: 'Care',
                      substringIn: 0,
                      subtringOut: 400,
                    ),
                  ]),
                ),
              ),
            ),
          ),
          childCount: 1,
        ),
      ),
    );
  }
}
