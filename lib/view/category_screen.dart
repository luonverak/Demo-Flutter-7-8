import 'package:demo2/model/category_model.dart';
import 'package:demo2/model/product_model.dart';
import 'package:flutter/material.dart';

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
              byCategory.length, (index) => byCategoryItem(byCategory[index])),
        ),
      ),
    );
  }

  Widget byCategoryItem(ProductModel model) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  model.image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: (model.date != null)
                    ? Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          child: Text(
                            model.date.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    : const Text(''),
              )
            ],
          ),
          Text(
            model.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '\$${model.price}',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
