import 'package:flutter/material.dart';

/// MES ESSAIS DE TAB BAR SANS APP BAR
class TestScreen extends StatefulWidget {
  static const routeName = '/test-screen';
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Tabbar with out Appbar")),
              ),
              color: Theme.of(context).colorScheme.primary,
            ),
            TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Tab 1',
                ),
                Tab(
                  text: 'Tab 2',
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text('Tab 1'),
                  Text('Tab 2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
