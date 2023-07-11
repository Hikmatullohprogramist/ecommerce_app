import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppSetting.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favorites"),
        backgroundColor: AppSetting.bgColor,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text("Minimal stand"),
                  subtitle: const Text("\$25.00"),
                  trailing: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border:
                            Border.all(color: AppSetting.mainColor, width: 2),
                      ),
                      child: const Center(
                        child: Icon(Icons.close),
                      ),
                    ),
                  ),
                  leading: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/minimal_stand.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const CustomButton(title: "Add all to my cart")
        ],
      ),
    );
  }
}
