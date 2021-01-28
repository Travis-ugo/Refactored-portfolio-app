import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travis_ugo/Travis-ugo/Dispatch/correction.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/mobile_view.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Response extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile(), // MobilePageView(),
      // tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}

// class MobilePageView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return HomeDesktop();
//   }
// }
