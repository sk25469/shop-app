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
                background: Container(color: Colors.red),
                onDismissed: (direction) {
                  setState(() {
                    cartItem.removeAt(index);
                  });
                },
                child: CartItem(
                  product: cartItem[index],
                  index: index,
                ),
              ),
            );
          },
          itemCount: cartItem.length,
        ),
      ),
    );
  }
}
