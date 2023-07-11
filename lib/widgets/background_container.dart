import 'package:flutter/cupertino.dart';

import '../utils/global_guides.dart';

class BackgroundContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const BackgroundContainer(
      {super.key,
      required this.child,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: const BoxDecoration(
        color: AppSetting.subcolor,
        boxShadow: [AppSetting.backgroundShadow],
      ),
      child: child,
    );
  }
}
