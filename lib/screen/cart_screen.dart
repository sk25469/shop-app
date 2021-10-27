import 'package:app_shop/demo_data.dart';
import 'package:app_shop/model/Product.dart';
import 'package:app_shop/widget/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart-screen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> cartItem = Demo().cartProduct;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'My Cart',
          style: textTheme.headline4,
        ),
      ),
      body: LiquidPullToRefresh(
        springAnimationDurationInMilliseconds: 200,
        backgroundColor: Colors.purple,
        showChildOpacityTransition: false,
        color: Colors.white,
        animSpeedFactor: 1.3,
        height: 60,
        onRefresh: () {
          return Future.delayed(
            const Duration(milliseconds: 700),
          );
        },
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Dismissible(
                key: Key(cartItem[index].id),
                direction: DismissDirection.endToStart,
                background: Container(color: Colors.red),
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    setState(() {
                      cartItem.removeAt(index);
                    });
                  }
                },
                child: CartItem(
                  product: cartItem[index],
                ),
              ),
            );
          },
          itemCount: cartItem.length,
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  const Text(
                    'Total :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Image.asset(
                    'assets/images/currency-inr.png',
                    color: Colors.black,
                    width: 22,
                    height: 22,
                  ),
                  const Text(
                    '500',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 50,
              padding: const EdgeInsets.only(right: 8.0),
              child: MaterialButton(
                height: 40,
                color: Colors.black,
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                        SnackBar(
                          content: Text(
                            'Order Placed',
                            style: textTheme.bodyText2,
                          ),
                          duration: const Duration(milliseconds: 700),
                        ),
                      )
                      .closed
                      .then(
                        (value) => Navigator.of(context).pop(),
                      );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.shopping_bag_sharp,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'PLACE ORDER',
                        style: textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
