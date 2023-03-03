import 'package:flutter/material.dart';

import '../../../util/color_palettes.dart';
import 'contact_profile_widget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe(this.ratio, {super.key});
  final BoxConstraints ratio;

  @override
  Widget build(BuildContext context) {
    final double maxWidth = ratio.maxWidth;
    final double maxHeight = ratio.maxHeight;
    return Stack(
      children: [
        (ratio.maxWidth > 650)
            ? Container(
                height: 515,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/profile_image.png",
                    ),
                    opacity: 0.07,
                  ),
                ),
              )
            : Container(
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
                      width: (ratio.maxWidth > 650) ? null : maxWidth * 0.7,
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
                    (maxWidth > 325)
                        ? Row(
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
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kGreenColor,
                                ),
                                onPressed: () {},
                                child: const Text("Download CV"),
                              ),
                              const SizedBox(
                                height: 12.0,
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
                          ),
                  ],
                ),
                myAvatar(maxWidth, context)
              ],
            ),
            SizedBox(
              height: maxHeight * 0.1,
            ),
            const Text(
              "About",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: maxWidth * 0.8,
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: maxWidth * 0.04,
            ),
            (maxWidth < 650 && maxWidth > 450)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyContact(
                            ratio,
                            icon: Icons.account_circle_rounded,
                            title: "Full Name",
                            subtitle: "Anak Agung Gede Raka Aswin Narottama",
                          ),
                          MyContact(
                            ratio,
                            icon: Icons.mail,
                            title: "Email Address",
                            subtitle: "aswinraka4@gmail.com",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      MyContact(
                        ratio,
                        icon: Icons.call,
                        title: "Phone Number",
                        subtitle: "+62-823-4182-2787",
                      ),
                    ],
                  )
                : (maxWidth < 450)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyContact(
                            ratio,
                            icon: Icons.account_circle_rounded,
                            title: "Full Name",
                            subtitle: "Anak Agung Gede Raka Aswin Narottama",
                          ),
                          MyContact(
                            ratio,
                            icon: Icons.mail,
                            title: "Email Address",
                            subtitle: "aswinraka4@gmail.com",
                          ),
                          MyContact(
                            ratio,
                            icon: Icons.call,
                            title: "Phone Number",
                            subtitle: "+62-823-4182-2787",
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyContact(
                            ratio,
                            icon: Icons.account_circle_rounded,
                            title: "Full Name",
                            subtitle: "Anak Agung Gede Raka Aswin Narottama",
                          ),
                          MyContact(
                            ratio,
                            icon: Icons.mail,
                            title: "Email Address",
                            subtitle: "aswinraka4@gmail.com",
                          ),
                          MyContact(
                            ratio,
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
    if (ratio.maxWidth > 650) {
      return Column(children: [
        SizedBox(
          width: maxWidth * 0.2,
        ),
        CircleAvatar(
          radius: maxWidth * 0.1,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          backgroundImage: const AssetImage("assets/images/profile_image.png"),
        )
      ]);
    } else {
      return Column(
        children: [],
      );
    }
  }
}
