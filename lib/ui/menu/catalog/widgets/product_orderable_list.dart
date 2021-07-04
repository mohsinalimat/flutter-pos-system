import 'package:flutter/material.dart';
import 'package:possystem/components/scaffold/reorderable_scaffold.dart';
import 'package:possystem/models/menu/catalog_model.dart';
import 'package:possystem/models/menu/product_model.dart';

class ProductOrderableList extends StatelessWidget {
  const ProductOrderableList({Key? key, required this.catalog})
      : super(key: key);

  final CatalogModel catalog;

  @override
  Widget build(BuildContext context) {
    return ReorderableScaffold(
      items: catalog.itemList,
      title: '排序產品',
      handleSubmit: (List<ProductModel> items) => catalog.reorderItems(items),
    );
  }
}
