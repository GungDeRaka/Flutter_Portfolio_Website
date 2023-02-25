import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio_website/util/sizing.dart';

import '../util/color_palettes.dart';
import '../widgets/contact_widget.dart';
import '../widgets/contact_form.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gung De Raka"),
        actions: [
          TextButton(
            onPressed: () {
              scrollController;
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text(
              "About Me",
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text(
              "Services",
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text(
              "Contact",
            ),
          ),
          const SizedBox(
            width: 24.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi, I am\nAnak Agung Gede Raka Aswin Narottama",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "A Flutter Moblie Apps Developer",
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
                    ),
                  ],
                ),
                 SizedBox(
                  width: widthMedQuery(context, 0.2),
                ),
                CircleAvatar(
                  radius: size.width * 0.12,
                  backgroundColor: Colors.black,
                  backgroundImage:
                      const AssetImage("assets/images/profile_image.png"),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
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
              width: size.width * 0.8,
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyContact(
                  icon: Icons.account_circle_rounded,
                  title: "Full Name",
                  subtitle: "Anak Agung Gede Raka Aswin Narottama",
                ),
                MyContact(
                  icon: Icons.mail,
                  title: "Email Address",
                  subtitle: "aswinraka4@gamil.com",
                ),
                MyContact(
                  icon: Icons.call,
                  title: "Phone Number",
                  subtitle: "+62-823-4182-2787",
                ),
              ],
            ),
            SizedBox(
              height: size.width * 0.1,
            ),
            Text(
              "What I Do",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Container(
              height: size.width * 0.2,
              width: size.width * 0.8,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topRight: Radius.elliptical(40, 60),
                  bottomLeft: Radius.elliptical(40, 60),
                ),
                border: Border.all(
                  color: kGreenColor,
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.logo_dev_outlined,
                    size: 60.0,
                    color: kGreenColor,
                  ),
                  SizedBox(
                    width: 600,
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      scrollDirection: Axis.vertical,
                      child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/github-mark-white.png",
                            width: 64.0,
                            height: 64.0,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Image.asset(
                            "assets/images/Github_Logo_White.png",
                            width: 64.0,
                            height: 32.0,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.width * 0.08,
            ),
            Text(
              "Project Showcase",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              height: size.width * 0.2,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              //FIXME projek sokes
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: size.height * 0.9,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: size.height * 0.9,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: size.height * 0.9,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: size.height * 0.9,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: size.height * 0.9,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.width * 0.08,
            ),
            Text(
              "Get in touch",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height:20,
            ),
            const ContactForm(),
            const SizedBox(
            height: 32.0,
            ),
            Divider( height: 12,color: Colors.white,),
             const SizedBox(
            height: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
