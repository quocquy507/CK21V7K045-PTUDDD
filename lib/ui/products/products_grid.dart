import 'package:flutter/material.dart';

import 'product_grid_tile.dart';
import 'products_manager.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorite;

  const ProductsGrid(this.showFavorite, {super.key});

  @override
  Widget build(BuildContext context) {
    final productsManager = ProductsManager();
    final Products =
        showFavorite ? productsManager.favoriteItems : productsManager.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: Products.length,
      itemBuilder: (ctx, i) => ProductGridTile(Products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
