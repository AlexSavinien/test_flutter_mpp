import 'package:flutter/material.dart';
import 'package:mpp_test/screens/product_detail_screen.dart';
import 'package:mpp_test/widgets/products_list.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Philosopher',
        ),
        home: MainScreen(),
        initialRoute: '/',
        routes: {
          '/product-detail': (context) => ProductDetailScreen(),
        });
  }
}
