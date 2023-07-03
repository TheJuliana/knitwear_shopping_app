import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import '../models/cart_model.dart';
import 'cart_page.dart';
import 'info_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea( //чтобы не залезал текст слишком высоко
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48,), //еще немного места
            //приветствие
            const Padding(
              padding:EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Greetings!'),
            ),

            const SizedBox(height: 4.0,),

            //болтовня
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Lets go order',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,),
              ),
            ),

            const SizedBox(height: 24,),
            //разделитель - линия
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),

            const SizedBox(height: 24,),
            //актуальное и сетка товаров
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,),
              child: Text(
                'Fresh items',
                style: TextStyle(fontSize: 16,),
              ),
            ),

            //для сетки используем этот виджет для заполнения оставшегося места
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                      itemCount: value.shopItems.length,
                      padding: EdgeInsets.all(12),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 /1.2, //делает прямоугольник
                      ), //количество столбцов
                      itemBuilder: (context, index) {
                        return GroceryItemTile(
                          // for each index [0] - is the item name in List
                          itemName: value.shopItems[index][0],
                          itemPrice: value.shopItems[index][1],
                          imagePath: value.shopItems[index][2],
                          itemDescription: value.shopItems[index][3],
                          color: value.shopItems[index][4],
                          onPressedToCart: () {
                            Provider.of<CartModel>(
                              context,
                              listen: false,
                            ).addItemToCart(index);
                          },
                          onPressedToDescription: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return InfoPage(indexPage: index);
                                },
                              ),
                            );
                          },
                        );
                      }
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}