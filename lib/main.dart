import 'package:flutter/material.dart';
import 'package:mpp_test/screens/product_detail_screen.dart';
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
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Color.fromRGBO(11, 59, 45, 1),
                secondary: Color.fromRGBO(255, 185, 0, 1),
                background: Colors.white,
              ),
          fontFamily: 'Philosopher',
        ),
        home: MainScreen(),
        initialRoute: '/',
        routes: {
          '/product-detail': (context) => ProductDetailScreen(),
        });
  }
}
