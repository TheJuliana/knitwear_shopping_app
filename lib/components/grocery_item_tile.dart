import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  //какие различия между товарами
  final String itemName, itemPrice, imagePath, itemDescription;
  final color;
  void Function()? onPressedToCart;
  void Function()? onPressedToDescription;

  GroceryItemTile({ //конструктор
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.itemDescription,
    required this.color,
    required this.onPressedToCart,
    required this.onPressedToDescription,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            color: color[100],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //->go to description page
              MaterialButton(
                onPressed: onPressedToDescription,
                height: 100,
              ),
              //название
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.3),
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MaterialButton(
                        onPressed: onPressedToCart,
                        //color: color[800],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(itemName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text(
                              "\$" + itemPrice,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //цена и кнопка

            ],
          )
      ),
    );
  }
}