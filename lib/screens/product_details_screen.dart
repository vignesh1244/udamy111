import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udamy111/providers/products.dart';
import 'package:collection/collection.dart';

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
    final prodcutId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context)
        .items
        .firstWhere((prod) => prod.id == prodcutId); /*findById(prodcutId);*/
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
