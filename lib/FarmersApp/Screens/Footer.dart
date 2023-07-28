
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        height: 190,
        width: double.infinity,
        child: FooterTextCard(),
      ),
    );
  }
}

class FooterTextCard extends StatelessWidget {
  const FooterTextCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(

          "Get TO Know Us",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "About Us  |  Our Farmers  |  Blog",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        SizedBox(
          height: 15,
        ),
        Text("Useful Links", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          height: 15,
        ),
        Text("Privacy Policy  |  Return & Refund Policy  |  Terms & Conditions",
            style: TextStyle(color: Colors.grey, fontSize: 12)),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.grey,
                    size: 28,
                  ),
                  FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Colors.grey,
                    size: 28,
                  ),
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.grey,
                    size: 28,
                  ),
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
