import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:mpp_test/models/plant.dart';

import '../widgets/products_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  ///MAIN SCREEN Tabs ->
  ///   {Top} / Outdoor / Indoor
  late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
      initialIndex: 1,
    );
  }

  List<Tab> _tabs = <Tab>[
    Tab(text: 'Top'),
    Tab(text: 'Outdoor'),
    Tab(text: 'Indoor'),
  ];

  List<String> _textsTabs = [
    'Top',
    'Outdoor',
    'Indoor',
  ];

  /// DUMMY DATA
  List<Plant> _plants = [
    Plant(
      title: 'Fiddle Leaf',
      description:
          'The fiddle-leaf fig (Ficus lyrata) is a popular indoor tree featuring very large, heavily veined, and glossy violin-shaped leaves that grow upright on a sleek trunk. A fiddle-leaf fig is perfect as a focal point of a room if you can situate it in a floor-standing container where the plant is allowed to grow to at least 6 feet tall. (Most indoor specimens reach around 10 feet tall.) It\'s a fairly fast grower and can be potted at any point in the year if you\'re like most gardeners acquiring a nursery plant to keep indoors. Keep in mind this gorgeous plant is toxic to cats and dogs.',
      imageUrl:
          'https://toppng.com/uploads/preview/6-foot-faux-fiddle-leaf-fig-tree-115630446551lssd1msww.png',
      water: 6,
      fertilizing: 25,
      isIndoor: true,
      isOutdoor: false,
      isTop: true,
      localization: 'Living Room',
      price: 25,
    ),
    Plant(
      title: 'Aloe Vera',
      description:
          'Aloe vera is a succulent plant species of the genus Aloe.[4] Having some 500 species, Aloe is widely distributed, and is considered an invasive species in many world regions. An evergreen perennial, it originates from the Arabian Peninsula, but grows wild in tropical, semi-tropical, and arid climates around the world.[4] It is cultivated for commercial products, mainly as a topical treatment used over centuries.The species is attractive for decorative purposes, and succeeds indoors as a potted plant. It is used in many consumer products, including beverages, skin lotion, cosmetics, ointments or in the form of gel for minor burns and sunburns. There is little clinical evidence for the effectiveness or safety of Aloe vera extract as a cosmetic or topical drug. The name derives from Latin as aloe and vera ("true").',
      imageUrl:
          'https://img2.freepng.fr/20180211/eqw/kisspng-aloe-vera-leaf-gel-formaldehyde-aloe-5a80a70e914e91.3325183115183808145952.jpg',
      water: 21,
      fertilizing: 64,
      isIndoor: true,
      isOutdoor: true,
      isTop: false,
      localization: 'Living Room',
      price: 45,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${DateFormat.MMMd().format(DateTime.now())}',
            ),
            Text(
              'Top Picks',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.apps_rounded),
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ProductsList(
            plants: _plants.where((element) => element.isTop).toList(),
          ),
          ProductsList(
            plants: _plants.where((element) => element.isOutdoor).toList(),
          ),
          ProductsList(
            plants: _plants.where((element) => element.isIndoor).toList(),
          ),
        ],
      ),
    );
  }
}
