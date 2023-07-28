
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {


  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  int index=0;

  @override
  Widget build(BuildContext context) {

          return BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            onTap: (newIndex) {
              setState(() {
                index=newIndex;
              });

            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined, weight: 100, grade: -25, fill: 0), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined, weight: 100, grade: -25, fill: 0), label: "Cart"),
              BottomNavigationBarItem(icon: Icon(Icons.person, weight: 100, grade: -25, fill: 0), label: "Profile"),
            ],
            currentIndex: index,
          );

  }
}