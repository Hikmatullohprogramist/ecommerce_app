import 'package:flutter/material.dart';

import '../utils/global_guides.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.only(bottom: 20, left: 32, right: 32),
      decoration: ShapeDecoration(
        color: AppSetting.mainColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
      ),
      child:   Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
