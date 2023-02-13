import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udamy111/providers/products.dart';
import 'package:collection/collection.dart';

import '../providers/product.dart';

class ProdcutDtailsScreen extends StatefulWidget {
  // const ProdcutDtailsScreen({Key? key}) : super(key: key);
  // final String title;
  //
  // const ProdcutDtailsScreen(this.title);
  static const routeName = '/product-detail';

  @override
  State<ProdcutDtailsScreen> createState() => _ProdcutDtailsScreenState();
}

class _ProdcutDtailsScreenState extends State<ProdcutDtailsScreen> {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context, listen: false)
        /*.items
        .firstWhere((prod) => prod.id == productId);*/
        .findById(productId);
    print('loadedxxxxxxxxxxxxxxxxxxxxxxx____' + productId);
    print('loadedProdcutinformation____' + loadedProduct.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Column(
        children: [
          Container(
            child: Text(loadedProduct.id),
          ),
          Container(
            child: Text(loadedProduct.title),
          ),
          Container(
            child: Text(loadedProduct.description),
          ),
          //
        ],
      ),
    );
  }
}
