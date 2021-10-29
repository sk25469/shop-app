import 'package:app_shop/demo_data.dart';
import 'package:app_shop/model/Medicine.dart';
import 'package:app_shop/model/Product.dart';
import 'package:app_shop/screen/cart_screen.dart';
import 'package:app_shop/screen/food_screen.dart';
import 'package:app_shop/widget/custom_search_bar.dart';
import 'package:app_shop/widget/food_item_card.dart';
import 'package:app_shop/widget/medicine_item_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> _products = Demo.products;
    final List<Medicine> _medicines = Demo.medicines;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transform.scale(
                    alignment: Alignment.center,
                    scale: 0.9,
                    child: Image.asset(
                      'assets/images/app_icon.png',
                    ),
                  ),
                ),
                const Text(
                  'MY APP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(CartScreen.routeName);
                    },
                    icon: const Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
            const CustomSearchBar(searchHintText: 'Search anything'),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Food',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                      ),
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return index == _products.length
                                ? _seeMoreButton()
                                : Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ProductItemCard(product: _products[index]),
                                  );
                          },
                          itemCount: _products.length + 1,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Medicines',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                      ),
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return index == _medicines.length
                                ? _seeMoreButton()
                                : Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MedicineItemCard(product: _medicines[index]),
                                  );
                          },
                          itemCount: _medicines.length + 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _seeMoreButton() {
  return SizedBox(
    width: 55,
    height: 25,
    child: IconButton(
      padding: const EdgeInsets.only(bottom: 40),
      alignment: Alignment.centerLeft,
      onPressed: () {
        // Navigator.of(context).pushNamed(FoodScreen.routeName);
      },
      icon: const Icon(
        Icons.arrow_right,
        color: Colors.white,
        size: 75,
      ),
    ),
  );
}
