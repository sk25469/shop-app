import 'package:app_shop/model/Product.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    var tt = Theme.of(context).textTheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.fill,
            width: 60,
            height: 60,
          ),
        ),
        subtitle: Text(
          'Quantity - 3',
          style: tt.bodyText2,
        ),
        title: Text(
          product.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        trailing: Text(
          "Rs.${product.price.ceil().toString()}",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
