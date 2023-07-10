import 'package:ecommerce_app/screens/home/home.dart';
import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';
import '../login/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppSetting.bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 2,
                        width: 100,
                        color: AppSetting.disabledColor,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Image.asset(
                          "assets/images/sofa.png",
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Container(
                        height: 2,
                        width: 100,
                        color: AppSetting.disabledColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome",
                          style: AppSetting.poppingBoldHeader,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 327,
                  height: 500,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: const BoxDecoration(
                    color: AppSetting.subcolor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x338A959E),
                        blurRadius: 40,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: const Text("Name"),
                          hintText: "Enter name ...",
                          border: const OutlineInputBorder(),
                          labelStyle: AppSetting.poppinsRegularlabel,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: const Text("Email"),
                          hintText: "Enter email ...",
                          border: const OutlineInputBorder(),
                          labelStyle: AppSetting.poppinsRegularlabel,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: const Text("Password"),
                          hintText: "Enter password ...",
                          border: const OutlineInputBorder(),
                          labelStyle: AppSetting.poppinsRegularlabel,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: const Text("Confirm password"),
                          hintText: "Enter password ...",
                          border: const OutlineInputBorder(),
                          labelStyle: AppSetting.poppinsRegularlabel,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ));
                          },
                          child: CustomButton(title: "Log in")),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have account ",
                              style: AppSetting.poppinsBoldtiny,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ));
                              },
                              child: Text(
                                "Sign in",
                                style: AppSetting.poppinsRegularlabel,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
