import 'package:flutter/material.dart';
import 'package:knit/models/cart_model.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatelessWidget {
  final int indexPage;
  InfoPage({super.key,  required this.indexPage});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<CartModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          //
          Text('name' + product.shopItems[indexPage][0]),
          Image.asset(product.shopItems[indexPage][2].toString()),
          Text('price' + product.shopItems[indexPage][1])
        ],
      ),
    );
  }
}
