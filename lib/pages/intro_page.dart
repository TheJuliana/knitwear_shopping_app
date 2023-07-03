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
                    child: Image.asset(
                      'lib/assets/knit_load.png',
                      height: 500,
                    )),
                Container(
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
      /*body: Column(
        children: [
          Expanded(
            child: OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                return GridView.count(
                  // Create a grid with 2 columns in portrait mode, or 3 columns in
                  // landscape mode.
                  crossAxisCount: orientation == Orientation.portrait ? 1 : 3,
                  children: [
                    SizedBox(
                        child: Image.asset(
                            'lib/assets/knit_load.png',
                          height: 1000,
                        )),
                    Container(

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
                      height: 100,
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Knitted clothes and handmade accessories of premium quality and for every taste",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSerif(
                          fontSize: 20,
                        ),
                      ),
                    ),),

                  ],
                );
              },
            ),
             *//* child: ListView(
                children: [
                  Image.asset('lib/assets/knit_load.png'),
                  Text('hjdjhgdrjghdrugdhugrrhrhrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr')
                ],
              ),*//*
          ),
          GestureDetector(
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
        ],
      ),*/
      /*body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: OrientationBuilder(
                  builder: (BuildContext context, Orientation orientation) {
                      return GridView.count(
                      // Create a grid with 2 columns in portrait mode, or 3 columns in
                      // landscape mode.
                        crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              bottom: 40.0,
                              top: 160.0,
                            ),
                            child: Image.asset('lib/assets/knit_load.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              "KNITWEAR SHOP",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSerif(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Knitted clothes and handmade accessories of premium quality and for every taste",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSerif(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      );
                  },
                ),
          ),
          //лого
        *//*  Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
              bottom: 40.0,
              top: 160.0,
            ),
            child: Image.asset('lib/assets/knit_load.png'),
          ),*//*
          //фирменная фразочка
        *//*  Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "KNITWEAR SHOP",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),*//*
          const SizedBox(height: 24,),
          *//*Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Knitted clothes and handmade accessories of premium quality and for every taste",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 20,
              ),
            ),
          ),*//*
          const Spacer(), //виджет который заполняет свободное место
          //кнопка начать
          GestureDetector(
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
          const Spacer(),
        ],


      ),*/
    );
  }
}