import 'package:flutter/material.dart';

import '../widgets/contact_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {},
                            child: const Text("Download CV"),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.green,
                              side: const BorderSide(
                                color: Colors.green,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Learn more"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  CircleAvatar(
                    radius: size.width * 0.1,
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
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  border: Border.all(
                    color: Colors.green,
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.logo_dev_outlined,
                      size: 60.0,
                      color: Colors.green,
                    ),
                   
                    SizedBox(
                      width: 600,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        controller: ScrollController(),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                   
                    SizedBox(
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
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}