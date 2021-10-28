import 'package:app_shop/model/Product.dart';
import 'package:flutter/material.dart';

/// It displays the item details for the items in cart
/// User can increase and decrease the no. of item in cart
class CartItem extends StatefulWidget {
  const CartItem({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.black,
      ),
      child: ListTile(
        tileColor: Colors.black,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            widget.product.imageUrl,
            fit: BoxFit.cover,
            width: 80,
            height: 80,
          ),
        ),
        subtitle: QuantityContainer(
          quantity: 1,
        ),
        title: Text(
          widget.product.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.only(left: 10),
          color: Colors.black,
          width: 70,
          child: Row(
            children: [
              Image.asset(
                'assets/images/currency-inr.png',
                color: Colors.white,
                width: 24,
                height: 24,
              ),
              Text(
                widget.product.price.ceil().toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// It displays the quantity of item in cart
/// User can increase and decrease the no. of item in cart
// ignore: must_be_immutable
class QuantityContainer extends StatefulWidget {
  QuantityContainer({
    Key? key,
    required quantity,
  }) : super(key: key);
  int quantity = 1;

  @override
  State<QuantityContainer> createState() => _QuantityContainerState();
}

class _QuantityContainerState extends State<QuantityContainer> {
  @override
  Widget build(BuildContext context) {
    var tt = Theme.of(context).textTheme;

    return Row(
      children: [
        const Text('Quantity ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
        IconButton(
          onPressed: () {
            setState(() {
              if (widget.quantity > 0) {
                widget.quantity--;
              } else {
                widget.quantity = 0;
              }
            });
          },
          icon: const Icon(
            Icons.remove,
            color: Colors.white,
            size: 20,
          ),
        ),
        Text(
          widget.quantity.toString(),
          style: tt.bodyText1,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              widget.quantity++;
            });
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
