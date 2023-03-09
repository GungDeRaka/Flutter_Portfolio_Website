import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio_website/pages/home_page/widgets/project_showcase.dart';
import 'package:my_flutter_portfolio_website/util/sizing.dart';
import 'package:provider/provider.dart';

import '../../controller/screen_controller.dart';
import '../../util/color_palettes.dart';
import 'widgets/contact_profile_widget.dart';
import 'widgets/contact_form.dart';
import 'widgets/my_app_bar.dart';
import 'widgets/about_me.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController scrollController = ScrollController();
  final aboutKey = GlobalKey();
  final contactKey = GlobalKey();
  final servicesKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints ratio) {
      double maxWidth = ratio.maxWidth;
      return ChangeNotifierProvider<MyScreenContoller>(
        create: (context) => MyScreenContoller(),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: MyAppBar(ratio),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                  child: Text(
                    "${ratio.maxWidth}\n${ratio.maxHeight}",
                    style: const TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                Consumer<MyScreenContoller>(
                  builder: (context,screen,_) {
                    return AboutMe(ratio, screen.aboutKey);
                  }
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Text(
                  "What I Do",
                  key: servicesKey,
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  height: maxWidth * 0.2,
                  width: maxWidth * 0.8,
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
                        width: maxWidth * 0.5,
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
                                width: maxWidth * 0.09,
                                height: maxWidth * 0.085,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Image.asset(
                                "assets/images/Github_Logo_White.png",
                                width: maxWidth * 0.09,
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
                ProjectShowcase(ratio),
                //FIXME projek sokes

                SizedBox(
                  height: size.width * 0.08,
                ),
                Text(
                  "Get in touch",
                  key: contactKey,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ContactForm(),
                const SizedBox(
                  height: 32.0,
                ),
                Divider(
                  height: 12,
                  color: fadedFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage(
                          "assets/icons/instagram-logo.png",
                        ),
                        size: 40,
                        color: fadedFont,
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage(
                          "assets/icons/facebook.png",
                        ),
                        size: 40,
                        color: fadedFont,
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage(
                          "assets/icons/fiverr.png",
                        ),
                        size: 16,
                        color: fadedFont,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 12.0,
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
