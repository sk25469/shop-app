import 'package:app_shop/demo_data.dart';
import 'package:app_shop/model/Product.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key, required this.product, required this.index})
      : super(key: key);
  final Product product;
  final int index;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          widget.product.imageUrl,
          fit: BoxFit.cover,
          width: 80,
          height: 80,
        ),
      ),
      subtitle: const QuantityContainer(),
      title: Text(
        widget.product.title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      trailing: Text(
        "Rs.${widget.product.price.ceil().toString()}",
        style: const TextStyle(
          color: Colors.purple,
          fontSize: 20,
        ),
      ),
    );
  }
}

class QuantityContainer extends StatefulWidget {
  const QuantityContainer({Key? key}) : super(key: key);

  @override
  State<QuantityContainer> createState() => _QuantityContainerState();
}

class _QuantityContainerState extends State<QuantityContainer> {
  int _initialQuantity = 0;

  @override
  Widget build(BuildContext context) {
    var tt = Theme.of(context).textTheme;

    return Row(
      children: [
        const Text('Quantity ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
        IconButton(
          onPressed: () {
            setState(() {
              if (_initialQuantity > 0) {
                _initialQuantity--;
              } else {
                _initialQuantity = 0;
              }
            });
          },
          icon: const Icon(
            Icons.remove,
            color: Colors.black,
            size: 20,
          ),
        ),
        Text(
          _initialQuantity.toString(),
          style: tt.bodyText1,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _initialQuantity++;
            });
          },
          icon: const Icon(
            Icons.add,
            color: Colors.black,
            size: 20,
          ),
        ),
      ],
    );
  }
}
