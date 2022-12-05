import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:fruitcart/Screens/homeScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:onboarding_animation/onboarding_animation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingAnimation(pages: [
        Container(
          color: Color(0xff0002A1),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Stack(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(43),
                            bottomRight: Radius.circular(43)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/2611810/pexels-photo-2611810.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height / 2,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 700),
                          child: Text(
                            "Feel The Freshness",
                            style: GoogleFonts.dancingScript(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 30, right: 30),
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 1000),
                          child: Text(
                            "some texts about the shop or description about the fruits",
                            style: GoogleFonts.acme(
                                fontSize: 17,
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Color(0xff0002A1),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Stack(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(43),
                            bottomRight: Radius.circular(43)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/36736/fruits-strawberries-fruit-red.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
                  )
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height / 2,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 800),
                          child: Text(
                            "Get Yours Now",
                            style: GoogleFonts.dancingScript(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 1200),
                          child: Text(
                            "some texts about the shop or description about the fruits",
                            style: GoogleFonts.acme(
                                fontSize: 17,
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Color(0xff0002A1),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Stack(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(43),
                            bottomRight: Radius.circular(43)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
                  )
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height / 2,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 600),
                          child: Text(
                            "Some Text",
                            style: GoogleFonts.dancingScript(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: DelayedDisplay(
                          delay: Duration(milliseconds: 1000),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    //   side: BorderSide(color: Colors.red)
                                  ))),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => homeScreen())));
                              },
                              child: Text("Get Started",
                                  style: GoogleFonts.dmSans(
                                      textStyle:
                                          TextStyle(color: Colors.black)))),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
