import 'package:flutter/material.dart';

import '../utils/global_guides.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final String path;
  final Color color;

  const CategoryButton({
    super.key,
    required this.title,
    required this.path,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          margin: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Center(
              child: Image.asset(
            path,
            fit: BoxFit.cover,
          )),
        ),
        Text(
          title,
          style: AppSetting.poppinsRegularsmall,
        ),
      ],
    );
  }
}
