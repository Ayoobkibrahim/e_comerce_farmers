import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned:false,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 18,fontWeight:FontWeight.w900,),
      title: Text("FARMERS FRESH ZONE"),
      actions: const [
        Row(
          children: [
            Icon(Icons.location_on_outlined,),
            Text("Kochi",style: TextStyle(fontSize: 14),),
            Icon(Icons.expand_more)
          ],
        )
      ],
      bottom: AppBar(
        backgroundColor: Colors.green,
        title:  SizedBox(
          width:double.infinity,
          height: 30,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 0),
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                prefixIcon: Icon(Icons.search,),
                hintText: "Search For Vegetabels Fruits...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide:  BorderSide(color: Colors.white),
                )
            ),
          ),
        ),
      ),

    );

  }
}
