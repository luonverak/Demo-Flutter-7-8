import 'package:demo2/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 2,
                color: Colors.amber,
                child: Image.asset(
                  widget.model.image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 5,
                right: 5,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.model.favorite = !widget.model.favorite;
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: (widget.model.favorite == false)
                            ? const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 30,
                              )
                            : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                widget.model.name,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                '\$${widget.model.price}',
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.model.counter <= 1
                            ? widget.model.counter
                            : setState(() {
                                widget.model.counter--;
                              });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${widget.model.counter}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.model.counter++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            'All Size',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
