import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udamy111/widgets/procut_item.dart';

import '../models/product.dart';
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  // const ProductsGrid({
  //   Key? key,
  //   required this.loadedProducts,
  // }) : super(key: key);
  //
  // final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    final prodctsData = Provider.of<Products>(context);
    final products = prodctsData.items;
    print('hhhh' + products.toString());
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      // Debugprint("hhhh"+ loadedProducts[i].id,);
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
    );
  }
}
