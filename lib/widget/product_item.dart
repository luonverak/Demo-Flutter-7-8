import 'package:flutter/material.dart';

import '../model/product_model.dart';

Widget productItem(ProductModel model) {
  return Container(
    color: const Color.fromARGB(255, 235, 235, 235),
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
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 5),
                  child: Text(
                    '\$${model.price}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          model.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          model.description.toLowerCase(),
          style: const TextStyle(
            fontSize: 15,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    ),
  );
}
