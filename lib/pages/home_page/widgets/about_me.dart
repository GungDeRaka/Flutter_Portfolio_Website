import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../util/color_palettes.dart';
import '../../../util/sizing.dart';
import 'contact_profile_widget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe(this.aboutKey, {super.key});

  final GlobalKey aboutKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 515,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black87,
                blurRadius: 32,
                spreadRadius: 40000,
                blurStyle: BlurStyle.inner,
                offset: Offset(double.infinity, double.infinity),
              ),
            ],
            color: Theme.of(context).scaffoldBackgroundColor,
            image: const DecorationImage(
                image: AssetImage(
                  "assets/images/profile_image.png",
                ),
                opacity: 0.19),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width:
                          (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
                              ? null
                              : ResponsiveWrapper.of(context).screenWidth * 0.7,
                      child: const Text(
                        "Hi, I am\nAnak Agung Gede Raka Aswin Narottama",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "A Front-End Flutter Developer",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey[100],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kGreenColor,
                          ),
                          onPressed: () {},
                          child: const Text("Download CV"),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: kGreenColor,
                            side: const BorderSide(
                              color: kGreenColor,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Learn more"),
                        ),
                      ],
                    )
                  ],
                ),
                (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
                    ? myAvatar(
                        ResponsiveWrapper.of(context).scaledWidth, context)
                    : SizedBox()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "About",
              key: aboutKey,
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: ResponsiveWrapper.of(context).scaledWidth * 0.8,
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: ResponsiveWrapper.of(context).scaledWidth * 0.04,
            ),
            // (maxWidth < mobileWidth && maxWidth > 450)
            //
            Wrap(
              runSpacing: 12,
              alignment: WrapAlignment.spaceAround,
              children: const [
                MyContact(
                  icon: Icons.account_circle_rounded,
                  title: "Full Name",
                  subtitle: "Anak Agung Gede Raka Aswin Narottama",
                ),
                MyContact(
                  icon: Icons.mail,
                  title: "Email Address",
                  subtitle: "aswinraka4@gmail.com",
                ),
                MyContact(
                  icon: Icons.call,
                  title: "Phone Number",
                  subtitle: "+62-823-4182-2787",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget myAvatar(double maxWidth, BuildContext context) {
    if (maxWidth > mobileWidth) {
      return Column(children: [
        // SizedBox(
        //   width: maxWidth * 0.2,
        // ),
        CircleAvatar(
          radius: maxWidth * 0.1,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          backgroundImage: const AssetImage("assets/images/profile_image.png"),
        )
      ]);
    } else {
      return Column(
        children: const [],
      );
    }
  }
}

// (ResponsiveWrapper.of(context).isTablet)
//     ? Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               MyContact(

//                 icon: Icons.account_circle_rounded,
//                 title: "Full Name",
//                 subtitle: "Anak Agung Gede Raka Aswin Narottama",
//               ),
//               MyContact(

//                 icon: Icons.mail,
//                 title: "Email Address",
//                 subtitle: "aswinraka4@gmail.com",
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 24.0,
//           ),
//           MyContact(

//             icon: Icons.call,
//             title: "Phone Number",
//             subtitle: "+62-823-4182-2787",
//           ),
//         ],
//       )
//     : (ResponsiveWrapper.of(context).isPhone && ResponsiveWrapper.of(context).isMobile )
//         ? Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               MyContact(

//                 icon: Icons.account_circle_rounded,
//                 title: "Full Name",
//                 subtitle: "Anak Agung Gede Raka Aswin Narottama",
//               ),
//               MyContact(

//                 icon: Icons.mail,
//                 title: "Email Address",
//                 subtitle: "aswinraka4@gmail.com",
//               ),
//               MyContact(

//                 icon: Icons.call,
//                 title: "Phone Number",
//                 subtitle: "+62-823-4182-2787",
//               ),
//             ],
//           )
//         : Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: const [
//               MyContact(

//                 icon: Icons.account_circle_rounded,
//                 title: "Full Name",
//                 subtitle: "Anak Agung Gede Raka Aswin Narottama",
//               ),
//               MyContact(

//                 icon: Icons.mail,
//                 title: "Email Address",
//                 subtitle: "aswinraka4@gmail.com",
//               ),
//               MyContact(

//                 icon: Icons.call,
//                 title: "Phone Number",
//                 subtitle: "+62-823-4182-2787",
//               ),
//             ],
//           ),
