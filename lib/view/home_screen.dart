import 'package:demo2/model/category_model.dart';
import 'package:demo2/model/product_model.dart';
import 'package:flutter/material.dart';

import '../widget/category_item.dart';
import '../widget/header_app.dart';
import '../widget/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: ListView(
        children: [
          const HeaderApp(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search product',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < listCategory.length; i++)
                  CategoryItem(
                    model: listCategory[i],
                  )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 20, right: 8),
            child: Row(
              children: [
                Text(
                  'All Product',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10, right: 8),
            child: SizedBox(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                shrinkWrap: true,
                primary: false,
                childAspectRatio: 1 / 1.75,
                children: List.generate(
                  listProduct.length,
                  (index) => productItem(
                    context,
                    listProduct[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
