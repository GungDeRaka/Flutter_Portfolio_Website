import 'package:flutter/material.dart';

class MyScreenContoller extends ChangeNotifier {
  BoxConstraints ratio = const BoxConstraints();
  final ScrollController scrollController = ScrollController();
  final aboutKey = GlobalKey();
  final contactKey = GlobalKey();
  final servicesKey = GlobalKey();

  void toAboutMe() async {
    BuildContext context = aboutKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  void toServicePart() async {
    BuildContext context = servicesKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }
}
