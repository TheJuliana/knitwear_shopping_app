import 'package:flutter/material.dart';

class GroceryItemTile extends StatefulWidget {
  //какие различия между товарами / What are the differences between the products
  final String itemName, itemPrice, imageSmallPath, imageBigPath, itemDescription;
  //final color;
  void Function()? onPressedToCart;
  void Function()? onPressedToDescription;

  GroceryItemTile({ //конструктор / constructor
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imageSmallPath,
    required this.imageBigPath,
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
              image: AssetImage(widget.imageSmallPath),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              //-> переход на страницу с описанием / -> go to the description page
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: widget.onPressedToDescription,
                    //height: 120,
                    icon: Icon(Icons.info_outline),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container( //название и цена / name and price
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: MaterialButton(   //цена и кнопка / price and button
                        onPressed: widget.onPressedToCart,
                        child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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

            ],
          )
      ),
    );
  }
}