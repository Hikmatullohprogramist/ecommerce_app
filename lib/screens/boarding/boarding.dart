import 'package:ecommerce_app/screens/login/login.dart';
import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:flutter/material.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 411,
            height: 1273,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/boarding.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 80,
            child: SizedBox(
              width: 377,
              child: Text(
                'MAKE YOUR \nHOME BEAUTIFUL',
                style: AppSetting.poppingBoldHeader,
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 200,
            child: SizedBox(
              width: 377,
              child: Text(
                'The best simple place where you discover \nmost wonderful furniture`s and make your \nhome beautiful',
                style: AppSetting.poppinsRegulartiny,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              },
              child: const CustomButton(
                title: "Get Started",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
