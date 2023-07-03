import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  //картинка интро
                    child: Image.asset(
                      'lib/assets/knit_load.png',
                      height: 500,
                    )),
                Container( //описание / description
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      "KNITWEAR SHOP",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSerif(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Knitted clothes and handmade accessories of premium quality and for every taste",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSerif(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //кнопка начать
          Container(
            padding: EdgeInsets.all(24.0),
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  })),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 205, 0, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(24),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}