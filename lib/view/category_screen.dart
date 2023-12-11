import 'package:demo2/model/category_model.dart';
import 'package:demo2/model/product_model.dart';
import 'package:flutter/material.dart';

import '../widget/by_category.dart';

class CartegoryScreen extends StatelessWidget {
  CartegoryScreen({super.key, required this.model});
  final CategoryModel model;

  late List byCategory =
      listProduct.where((element) => element.fId == model.id).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${model.name} category'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1.7,
          children: List.generate(
              byCategory.length, (index) => byCategoryItem(context,byCategory[index])),
        ),
      ),
    );
  }


}
