import 'package:app_shop/demo_data.dart';
import 'package:app_shop/model/Product.dart';
import 'package:app_shop/screen/cart_screen.dart';
import 'package:app_shop/widget/custom_search_bar.dart';
import 'package:app_shop/widget/item_card.dart';
import 'package:app_shop/widget/see_more_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> _products = Demo.products;

    // for (int i = 0; i < _products.length; i++) {
    //   print(_products[i].toString());
    // }
    return SafeArea(
      child: Column(
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
          const CustomSearchBar(),
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
                              ? const SeeMoreButton()
                              : Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ItemCard(product: _products[index]),
                                );
                        },
                        itemCount: _products.length + 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(10),
                  //   alignment: Alignment.centerLeft,
                  //   child: const Text(
                  //     'Medicine',
                  //     style: TextStyle(
                  //       fontSize: 28,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 5.0,
                  //     right: 5,
                  //   ),
                  //   child: SizedBox(
                  //     height: 200,
                  //     width: double.infinity,
                  //     child: ListView.builder(
                  //       scrollDirection: Axis.horizontal,
                  //       itemBuilder: (ctx, index) {
                  //         return index == _products.length
                  //             ? const SeeMoreButton()
                  //             : InkWell(
                  //                 onTap: () {
                  //                   Navigator.of(context)
                  //                       .pushNamed(ProductDetailScreen.routeName);
                  //                 },
                  //                 child: Container(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: ItemCard(product: _products[index]),
                  //                 ),
                  //               );
                  //       },
                  //       itemCount: _products.length + 1,
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.all(10),
                  //   alignment: Alignment.centerLeft,
                  //   child: const Text(
                  //     'Grocery',
                  //     style: TextStyle(
                  //       fontSize: 28,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 5.0,
                  //     right: 5,
                  //   ),
                  //   child: SizedBox(
                  //     height: 200,
                  //     width: double.infinity,
                  //     child: ListView.builder(
                  //       scrollDirection: Axis.horizontal,
                  //       itemBuilder: (ctx, index) {
                  //         return index == _products.length
                  //             ? const SeeMoreButton()
                  //             : InkWell(
                  //                 onTap: () {
                  //                   Navigator.of(context)
                  //                       .pushNamed(ProductDetailScreen.routeName);
                  //                 },
                  //                 child: Container(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: ItemCard(product: _products[index]),
                  //                 ),
                  //               );
                  //       },
                  //       itemCount: _products.length + 1,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
