import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/screen_controller.dart';
import '../../../util/sizing.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar(this.ratio, {super.key});

  final BoxConstraints ratio;

  @override
  Widget build(BuildContext context) {
    double maxWidth = ratio.maxWidth;
    if (ratio.maxWidth > mobileWidth) {
      return Consumer<MyScreenContoller>(
        builder:(context, screen, child) =>  AppBar(
          // centerTitle: (ratio.maxWidth > 600)? false : true,
          title: const Text("Gung De Raka"),
          actions: [
            TextButton(
              onPressed: () {
                screen.toAboutMe();
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
          child: const CircleAvatar(
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
                            const Offset(double.infinity, 0), Offset.infinite),
                        const Size(200, 200)),
                    items: [
                      const PopupMenuItem(
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



// (ratio.maxWidth > 650)
//               ? AppBar(
//                   // centerTitle: (ratio.maxWidth > 600)? false : true,
//                   title: const Text("Gung De Raka"),
//                   actions: [
//                     TextButton(
//                       onPressed: () async {
//                         context = aboutKey.currentContext!;
//                         await Scrollable.ensureVisible(context);
//                       },
//                       style: TextButton.styleFrom(
//                         foregroundColor: Colors.white,
//                       ),
//                       child: const Text(
//                         "About Me",
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () async {
//                         context = servicesKey.currentContext!;
//                         await Scrollable.ensureVisible(context);
//                       },
//                       style: TextButton.styleFrom(
//                         foregroundColor: Colors.white,
//                       ),
//                       child: const Text(
//                         "Services",
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () async {
//                         context = contactKey.currentContext!;
//                         await Scrollable.ensureVisible(context);
//                       },
//                       style: TextButton.styleFrom(
//                         foregroundColor: Colors.white,
//                       ),
//                       child: const Text(
//                         "Contact",
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 24.0,
//                     ),
//                   ],
//                 )
//               : AppBar(
//                   leading: InkWell(
//                     onTap: () {
//                       showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                                 contentPadding: EdgeInsets.zero,
//                                 content: Container(
//                                   height: maxWidth * 0.4,
//                                   width: maxWidth * 0.4,
//                                   decoration: const BoxDecoration(
//                                     color: Colors.black,
//                                     image: DecorationImage(
//                                       image: AssetImage(
//                                           "assets/images/profile_image.png"),
//                                     ),
//                                   ),
//                                 ),
//                               ));
//                     },
//                     child: const CircleAvatar(
//                       radius: null,
//                       minRadius: 4,
//                       maxRadius: 8,
//                       backgroundImage: AssetImage(
//                         "assets/images/profile_image.png",
//                       ),
//                       backgroundColor: Colors.transparent,
//                     ),
//                   ),
//                   title: const Text("Gung De Raka"),
//                   actions: [
//                     IconButton(
//                         onPressed: () {
//                           showMenu(
//                               context: context,
//                               position: RelativeRect.fromSize(
//                                   Rect.fromPoints(
//                                       const Offset(double.infinity, 0),
//                                       Offset.infinite),
//                                   const Size(200, 200)),
//                               items: [
//                                 PopupMenuItem(
//                                   child: TextButton(
//                                     onPressed: () async {
//                                       context = aboutKey.currentContext!;
//                                       await Scrollable.ensureVisible(context);
//                                     },
//                                     style: TextButton.styleFrom(
//                                       foregroundColor: Colors.white,
//                                     ),
//                                     child: const Text(
//                                       "About Me",
//                                     ),
//                                   ),
//                                 ),
//                                 PopupMenuItem(
//                                   child: TextButton(
//                                     onPressed: () async {
//                                       context = servicesKey.currentContext!;
//                                       await Scrollable.ensureVisible(context);
//                                     },
//                                     style: TextButton.styleFrom(
//                                       foregroundColor: Colors.white,
//                                     ),
//                                     child: const Text(
//                                       "Services",
//                                     ),
//                                   ),
//                                 ),
//                                 PopupMenuItem(
//                                   child: TextButton(
//                                     onPressed: () async {
//                                       context = contactKey.currentContext!;
//                                       await Scrollable.ensureVisible(context);
//                                     },
//                                     style: TextButton.styleFrom(
//                                       foregroundColor: Colors.white,
//                                     ),
//                                     child: const Text(
//                                       "Contact",
//                                     ),
//                                   ),
//                                 ),
//                               ]);
//                         },
//                         icon: const Icon(Icons.menu))
//                   ],
//                 ),
