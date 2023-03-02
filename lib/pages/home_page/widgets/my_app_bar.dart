import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar(this.ratio, {super.key});

  final BoxConstraints ratio;

  @override
  Widget build(BuildContext context) {
    double maxWidth = ratio.maxWidth;
    if (ratio.maxWidth > 610) {
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
        leading: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      content: Container(
                        height: maxWidth * 0.4,
                        width: maxWidth * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/profile_image.png"),
                          ),
                        ),
                      ),
                    ));
          },
          child: CircleAvatar(
            radius: null,
            minRadius: 4,
            maxRadius: 8,
            backgroundImage: AssetImage(
              "assets/images/profile_image.png",
            ),
            backgroundColor: Colors.transparent, 
          ),
        ),
        title: const Text("Gung De Raka"),
        actions: [
          IconButton(
              onPressed: () {
                showMenu(
                    context: context,
                    position: RelativeRect.fromSize(
                        Rect.fromPoints(
                            Offset(double.infinity, 0), Offset.infinite),
                        Size(200, 200)),
                    items: [
                      PopupMenuItem(
                          child: Text("text",
                          style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          ),
                          ),)
                    ]);
              },
              icon: const Icon(Icons.menu))
        ],
      );
    }
  }
}
