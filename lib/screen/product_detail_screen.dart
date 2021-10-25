import 'package:app_shop/model/Product.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen(this.product);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.black54,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(
                  right: 9,
                ),
                child: Text(
                  product.title,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              background: Hero(
                tag: product.id,
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 260,
                      color: const Color.fromRGBO(35, 31, 32, 1),
                      margin: const EdgeInsets.all(8.0),
                      child: Text(
                        ' An amazing motichur ka ${product.title}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                        // loadedProduct.description,
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Rs.${product.price.ceil()}',
                        style: const TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 45,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 300),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
