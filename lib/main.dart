import 'package:e_comerce_farmers/FarmersApp/Farmers.Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"FARMERS FRESH ZONE" ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily:GoogleFonts.workSans().fontFamily),
      home: FaremersHome(),

    );
  }
}
