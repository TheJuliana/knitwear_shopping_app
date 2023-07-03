import 'package:flutter/material.dart';

class GroceryItemTile extends StatefulWidget {
  //какие различия между товарами
  final String itemName, itemPrice, imagePath, itemDescription;
  //final color;
  void Function()? onPressedToCart;
  void Function()? onPressedToDescription;

  GroceryItemTile({ //конструктор
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.itemDescription,
    required this.onPressedToCart,
    required this.onPressedToDescription,

  });

  @override
  State<GroceryItemTile> createState() => _GroceryItemTileState();
}

class _GroceryItemTileState extends State<GroceryItemTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //->переход на страницу с описанием
              MaterialButton(
                onPressed: widget.onPressedToDescription,
                height: 100,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container( //название и цена
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MaterialButton(
                        onPressed: widget.onPressedToCart,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(widget.itemName,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "\$" + widget.itemPrice,
                              style: const TextStyle(
                                fontSize: 16,
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