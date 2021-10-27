import 'package:app_shop/model/Product.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen(this.product);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
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
                child: Container(
                  // color: Colors.black,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
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
                const SizedBox(height: 800),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        shadowColor: Colors.white,
        elevation: 10,
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(35, 31, 32, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8.0),
                width: 150,
                height: 45,
                child: MaterialButton(
                  height: 40,
                  color: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Item added to cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                padding: const EdgeInsets.only(right: 8.0),
                child: MaterialButton(
                  height: 40,
                  color: Colors.purple.shade500,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
