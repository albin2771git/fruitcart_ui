import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruitcart/catagory/Vegitables.dart';
import 'package:fruitcart/catagory/fastFoodScreen.dart';
import 'package:fruitcart/catagory/fridaysale.dart';
import 'package:fruitcart/catagory/fruits.dart';
import 'package:fruitcart/catagory/offers.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatefulWidget {
  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  late bool selectedIndex;

  int? index;

  @override
  void initState() {
    selectedIndex = false;
    index = 1;
  }
  //const TabBarWidget({super.key});

  //const TabBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      index == 1 ? Colors.white : Color(0xffFB2576)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: ((context) => Fruits())));
                },
                child: Text(
                  "Favorites",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: index == 1 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    index == 2 ? Colors.white : Color(0xffFB2576),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => FastFoodScreen())));
                },
                child: Text(
                  "FastFood",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: index == 2 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      index == 3 ? Colors.white : Color(0xffFB2576)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Vegitables())));
                },
                child: Text(
                  "Vegitables",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: index == 3 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      index == 4 ? Colors.white : Color(0xffFB2576)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    index = 4;
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Offers())));
                },
                child: Text(
                  "Offers",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: index == 4 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      index == 5 ? Colors.white : Color(0xffFB2576)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    index = 5;
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => FridaySale())));
                },
                child: Text(
                  "Friday Sale",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: index == 5 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
