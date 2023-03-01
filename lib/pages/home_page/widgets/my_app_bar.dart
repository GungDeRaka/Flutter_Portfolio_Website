import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar(this.ratio, {super.key});

  final BoxConstraints ratio;

  @override
  Widget build(BuildContext context) {
    if (ratio.maxWidth > 600) {
      return AppBar(
        // centerTitle: (ratio.maxWidth > 600)? false : true,
        title: const Text("Gung De Raka"),
        actions: [
          TextButton(
            onPressed: () {},
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
      );
    } else {
      return AppBar(
        leading: const CircleAvatar(
          radius: 8.0,
        backgroundImage: AssetImage("assets/images/profile_image.png"),
          backgroundColor: Colors.black,
        ),
        title: const Text("Gung De Raka"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      );
    }
  }
}
