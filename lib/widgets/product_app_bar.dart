import 'package:flutter/material.dart';

import '../models/plant.dart';

class ProductAppBar extends StatelessWidget {
  ProductAppBar({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  List<Tab> myTabs = <Tab>[
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
                          Text(
                            'Water',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'In ${plant.water} days',
                            style: TextStyle(
                              color: Colors.black45,
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
                          Text(
                            'Water',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'In ${plant.fertilizing} days',
                            style: TextStyle(
                              color: Colors.black45,
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
                    height: 300,
                    child: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        appBar: AppBar(
                          automaticallyImplyLeading: false,
                          bottom: TabBar(
                            tabs: myTabs,
                          ),
                        ),
                        body: TabBarView(children: [
                          Tab(
                            child: Text(plant.description.substring(0, 200)),
                          ),
                          Tab(
                            child: Text(plant.description.substring(200, 400)),
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
