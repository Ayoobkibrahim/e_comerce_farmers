
import 'package:flutter/material.dart';

class BannerWid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Card(
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 0, vertical: 2),
          child: Container(
            width: double.maxFinite,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://t3.ftcdn.net/jpg/06/17/81/96/240_F_617819635_2sAeoI8mQaYUZGdd7RnYSNsRiPsIDzkN.jpg"),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
