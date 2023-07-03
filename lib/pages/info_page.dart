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
      ),
      body: Column(
         children: [
           Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        product.shopItems[indexPage][0],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSerif(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,),),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(product.shopItems[indexPage][2].toString()),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          child: SingleChildScrollView(
                            child: Text(
                              product.shopItems[indexPage][3] + "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSerif(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    
                  //
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Image.asset(product.shopItems[indexPage][2].toString()),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Text(
                  //       product.shopItems[indexPage][3],
                  //       textAlign: TextAlign.center,
                  //       style: GoogleFonts.notoSerif(
                  //         fontSize: 18,
                  //       ),
                  //     ),
                  //   ),
                  // ],
                   // ),


               /*     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onPressed: product.addItemToCart(indexPage),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(12.0),

                            child: Text('price' + product.shopItems[indexPage][1])
                        ),
                      ),
                    ),*/
                  ],
                ),

              ),
         ],
        ),
      );
  }
}
