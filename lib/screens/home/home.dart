import 'package:ecommerce_app/data/models/category_model.dart';
import 'package:ecommerce_app/data/models/product_model.dart';
import 'package:ecommerce_app/screens/product/product_info.dart';
import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:ecommerce_app/widgets/home_screen_category.dart';
import 'package:flutter/material.dart';

import '../../generated/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> products = [
    ProductModel(
        "Black Simple Lamp", "assets/images/simple_black_lamp.png", 12.00),
    ProductModel("Minimal Stand", "assets/images/minimal_stand.jpg", 25.00),
    ProductModel("Coffee Chair", "assets/images/coffee_chair.jpg", 12.00),
    ProductModel("Simple Desk", "assets/images/simple_desk.jpg", 12.00),
  ];

  List<CategoryModel> category = [
    CategoryModel("Popular", "assets/images/icons/star.png"),
    CategoryModel(
        "Popular", "assets/images/icons/category_imgs/solar_chair-outline.png"),
    CategoryModel(
        "Popular", "assets/images/icons/category_imgs/game-icons_table.png"),
    CategoryModel(
        "Popular", "assets/images/icons/category_imgs/icons8_bed.png"),
  ];

  int selectedIndex = 0;
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(Assets.iconsRiSearch2Line),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MAKE HOME",
                            style: AppSetting.poppinsRegularsmall,
                          ),
                          Text(
                            "BEAUTIFUL",
                            style: AppSetting.poppinsBoldp,
                          ),
                        ],
                      ),
                      Image.asset(Assets.iconsBiCart2),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: CategoryButton(
                          color: selectedIndex == index
                              ? AppSetting.mainColor
                              : AppSetting.disabledColor,
                          path: category[index].imPath,
                          title: category[index].title,
                        ),
                      );
                    },
                  ),
                ),
                GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 2 / 3),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductInfoScreen(
                              product_name: products[index].title,
                              product_image: products[index].imPath,
                              product_price: products[index].price.toString(),
                              product_rating: "5",
                              product_comment:
                                  "This is a product comment: asdsad ds ads asd asd asd asdasda sdas d asd asdas das da sdas d asd asdas dasdasdasdasd ddddjhkjdfhkj dhfkjh jh kjfh",
                            ),
                          )),
                      child: Card(
                        elevation: 0,
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        products[index].imPath,
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Text(
                              products[index].title,
                              style: AppSetting.poppinsRegularsmall,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${products[index].price}",
                                  style: AppSetting.poppinsBoldsmall,
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: AppSetting.greyColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.shopping_bag,
                                    color: AppSetting.mainColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
