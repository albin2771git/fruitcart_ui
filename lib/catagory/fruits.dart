import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Fruits extends StatefulWidget {
  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  //const Fruits({super.key});
  List<String> Imgs = [
    'https://images.pexels.com/photos/1002543/pexels-photo-1002543.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/209339/pexels-photo-209339.jpeg?auto=compress&cs=tinysrgb&w=600',
    "https://images.pexels.com/photos/760281/pexels-photo-760281.jpeg?auto=compress&cs=tinysrgb&w=600",
    'https://images.pexels.com/photos/974561/pexels-photo-974561.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  List<String> names = [
    'lemon',
    'Strawberry',
    'Apple',
    'grapes',
    'Watermelon',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height * 66,
        child: DelayedDisplay(
          delay: Duration(milliseconds: 600),
          child: GridView.builder(
              itemCount: Imgs.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: ((context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  height: MediaQuery.of(context).size.height * 0.34,
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(Imgs[index])),
                    ),
                    Positioned(
                      left: 30,
                      top: 120,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                names[index],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    )
                  ]),
                );
              })),
        ),
      ),
    );
  }
}
