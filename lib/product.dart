import 'dart:math';

import 'package:flutter/material.dart';

class Product {
  // this is a object
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    // this is a incition
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> mockData() {
  List<Product> demo_product = [];

  var count = 0;
  int randomNumber = Random().nextInt(90) + 10; // from 10 upto 99 included
  int randomImg = Random().nextInt(4); // from 10 upto 99 included
  final list = ['Long Sleeve Shirts', 'Casual Nolin', 'red sharts','Casual Henley Shirts'];

  while (count < 17) {
    var product = Product(
      image: "assets/images/product_${randomImg}.png",
      title: list[randomImg] ,
      price: randomNumber,
      bgColor: const Color(0xFFFEFBF9),
    );

    demo_product.add(product);
    count += 1;
  }

  return demo_product;
}
