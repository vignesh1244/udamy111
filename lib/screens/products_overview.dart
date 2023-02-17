import 'package:flutter/material.dart';

import '../providers/product.dart';
import '../widgets/procut_item.dart';
import '../widgets/product_grid.dart';

class ProdcutOverviewScreen extends StatefulWidget {
  // ProdcutOverviewScreen({super.key});

  @override
  State<ProdcutOverviewScreen> createState() => _ProdcutOverviewScreenState();
}

class _ProdcutOverviewScreenState extends State<ProdcutOverviewScreen> {
  // const ProdcutOverviewScreen({Key? key}) : super(key: key);
  // final List<Product> loadedProducts =

  @override
  Widget build(BuildContext context) {
    // var loadedProducts;
    // print('hello------' + loadedProducts.toString());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('uudamy11111111')),
      ),
      body: ProductsGrid(),
    );
  }
}
