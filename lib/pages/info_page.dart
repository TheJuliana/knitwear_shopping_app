import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed:  () {
          Provider.of<CartModel>(
            context,
            listen: false,
          ).addItemToCart(indexPage);
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add_shopping_cart),
      ),
      body: Column(
         children: [
           Expanded(
                child: ListView(
                  children: [
                    //Name
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        product.shopItems[indexPage][0],
                        textAlign: TextAlign.start,
                        style: GoogleFonts.notoSerif(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,),),
                    ),
                    //Image
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(product.shopItems[indexPage][2].toString()),
                      ),
                    //Description
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Text(
                            product.shopItems[indexPage][3],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoSerif(
                              fontSize: 18,
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 8.0),
             child: Divider(),
           ),

           //Price
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: Container(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Price:',
                         style: TextStyle(color: Colors.grey[600]),
                         ),
                       Text(product.shopItems[indexPage][1], style: TextStyle(
                         color: Colors.black,
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                       ),),
                     ],
                   ),
                 ],
               ),
             ),
           ),
         ],
        ),
      );
  }
}
