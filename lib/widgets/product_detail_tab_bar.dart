import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../models/plant.dart';
import 'product_info_tab.dart';

class ProductDetailTabBar extends StatefulWidget {
  ProductDetailTabBar({
    Key? key,
    required this.plant,
  }) : super(key: key);
  final Plant plant;

  @override
  State<ProductDetailTabBar> createState() => _ProductTabBarState();
}

class _ProductTabBarState extends State<ProductDetailTabBar>
    with TickerProviderStateMixin {
  /// TabController variable
  late TabController _tabController;
  late Plant _plant = widget.plant;
  late List<ProductInfoTab> myTabViews;

  /// TabController & ProductInfoTabs Initialization
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    myTabViews = <ProductInfoTab>[
      ProductInfoTab(
        plant: _plant,
        subtitle: 'Light',
        title: 'Care',
        substringIn: 0,
        subtringOut: 400,
      ),
      ProductInfoTab(
        plant: _plant,
        subtitle: 'Light',
        title: 'Care',
        substringIn: 0,
        subtringOut: 400,
      ),
      ProductInfoTab(
        plant: _plant,
        subtitle: 'Light',
        title: 'Care',
        substringIn: 0,
        subtringOut: 400,
      ),
    ];
    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Scaffold(
        backgroundColor: Colors.white,

        /// TabBarView Content and Styling
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: myTabViews,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
