import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruitcart/Screens/Explore.dart';
import 'package:fruitcart/Screens/ProfileScreen.dart';
import 'package:fruitcart/catagory/Vegitables.dart';
import 'package:fruitcart/catagory/fastFoodScreen.dart';
import 'package:fruitcart/catagory/fridaysale.dart';
import 'package:fruitcart/catagory/fruits.dart';
import 'package:fruitcart/catagory/offers.dart';
import 'package:fruitcart/widgets/AppBar.dart';
import 'package:fruitcart/widgets/TabBar.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  // late int SelectedIndex;
  int selectedindex = 0;
  void onItemTap(int index) {
    setState(() {
      selectedindex = index;
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => pages.elementAt(index))));
    });
  }

  var pages = [homeScreen(), ExploreScreen(), ProfileScreen()];

  // const homeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    //  int currentIndex = 0;
    return Scaffold(
      backgroundColor: Color(0xff0002A1),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          AppBarWidget(),
          SliverList(
              delegate: SliverChildListDelegate([
            TabBarWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "more",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Fruits()
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: onItemTap,
          elevation: 0,
          backgroundColor: Colors.grey[100],
          selectedItemColor: Color(0xff0002A1),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
    );
  }
}
