import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio_website/util/color_palettes.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class MyContact extends StatelessWidget {
  const MyContact(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});

  final String title;
  final String subtitle;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    if (ResponsiveWrapper.of(context).isLargerThan(MOBILE)) {
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
              padding: const EdgeInsets.symmetric(vertical: 4),
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
        width: ResponsiveWrapper.of(context).screenWidth,
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
