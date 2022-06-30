import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import '../models/plant.dart';

class ProductAppBar extends StatelessWidget {
  ProductAppBar({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

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
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 150,
          title: Column(
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
                height: 10,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.white.withOpacity(0.2),
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                            child: Image.asset(
                              'assets/icons/watering_can.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Water',
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.white.withOpacity(0.2),
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                            child: Image.asset(
                              'assets/icons/plant.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fertilizing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'In ${plant.fertilizing} days',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    height: 490,
                    child: DefaultTabController(
                      length: 3,
                      child: Scaffold(
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
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        floatingActionButtonLocation:
                            FloatingActionButtonLocation.centerDocked,
                        backgroundColor: Colors.white,
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
                        body: TabBarView(children: [
                          Tab(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Care',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(),
                                  Text(
                                    'Light',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(plant.description.substring(0, 200)),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(plant.description.substring(200, 500)),
                          ),
                          Tab(
                            child: Text(plant.description.substring(400)),
                          ),
                        ]),
                      ),
                    ),
                  ),
              childCount: 1),
        )
      ],
    );
  }
}
