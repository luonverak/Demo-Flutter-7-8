import 'package:demo2/view/detail_screen.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';

Widget byCategoryItem(BuildContext context, ProductModel model) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(model: model),
          ));
    },
    child: Container(
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
    ),
  );
}
