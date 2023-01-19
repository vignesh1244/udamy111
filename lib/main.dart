import 'package:flutter/material.dart';
import 'package:udamy111/providers/products.dart';
import 'package:udamy111/screens/product_details_screen.dart';
import 'package:udamy111/screens/products_overview.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProdcutOverviewScreen(),
        routes: {
          //routeName is static const variable key....
          ProdcutDtailsScreen.routeName: (ctx) => ProdcutDtailsScreen(),
        },
      ),
    );
  }
}
