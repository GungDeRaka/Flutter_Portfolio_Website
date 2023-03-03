import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio_website/util/color_palettes.dart';

class MyContact extends StatelessWidget {
  const MyContact(this.ratio,
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});

  final String title;
  final String subtitle;
  final IconData icon;
  final BoxConstraints ratio;

  @override
  Widget build(BuildContext context) {
    if (ratio.maxWidth >= 450) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.grey[900],
              child: Icon(
                icon,
                color: kGreenColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        width: ratio.maxWidth,
        child: ListTile(
          
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey[900],
            child: Icon(
              icon,
              color: kGreenColor,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            subtitle,
            
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      );
    }
  }
}
