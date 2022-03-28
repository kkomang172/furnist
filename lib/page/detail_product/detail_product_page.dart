import 'package:flutter/material.dart';
import 'package:furnist/app_style.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail Product",
          style: kDProduct,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.card_travel_outlined)),
        ],
      ),
    );
  }
}
