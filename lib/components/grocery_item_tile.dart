import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  //какие различия между товарами
  final String itemName, itemPrice, imagePath;
  final color;
  void Function()? onPressedToCart;
  void Function()? onPressedToDescription;

  GroceryItemTile({ //конструктор
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressedToCart,
    required this.onPressedToDescription,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          decoration: BoxDecoration(
            color: color[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //изображение
              MaterialButton(
                onPressed: onPressedToDescription,
                child: Image.asset(
                  imagePath,
                  height: 64,
                ),
              ),
              //название
              Text(itemName),
              //цена и кнопка
              MaterialButton(
                onPressed: onPressedToCart,
                color: color[800],
                child: Text(
                  "\$" + itemPrice,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}