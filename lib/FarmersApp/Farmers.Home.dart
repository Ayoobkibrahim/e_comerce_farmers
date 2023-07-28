import 'package:e_comerce_farmers/FarmersApp/Screens/AppBarScreen.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Banner.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Blog.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/BottomBarScreen.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Carousel.Slider.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Customer.Review.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Footer.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Product.List.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Products.Category.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/Service%20Feauture.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/chip.dart';
import 'package:e_comerce_farmers/FarmersApp/Screens/main_tile_widget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FaremersHome(),));

}

class FaremersHome extends StatelessWidget {


  final List widgets = const[
    ChipWid(),
    Carousel(),
    ServiceFeatures(),
    MainTitleWidget(title: "Shope By Category"),
    ProductCategory(),
    BannerWid(),
    MainTitleWidget(title: "Most Selling Product"),
    ProductList(),
    BlogTile(),
    CustomerReview(),
    Footer(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              AppBarScreen(),
              SliverList.builder(
                 itemCount: widgets.length ,
                   itemBuilder: (context,index)=> widgets[index]
              ),
            ],
          ),
      ),
      bottomNavigationBar: BottomBarScreen(),

    );
  }
}


