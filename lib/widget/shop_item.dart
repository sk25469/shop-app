import 'package:app_shop/model/Shop.dart';
import 'package:flutter/material.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key, required this.shop}) : super(key: key);
  final Shop shop;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        child: Image.network(
          shop.imageUrl,
          fit: BoxFit.fill,
          width: 65,
          height: 65,
        ),
      ),
      title: Text(
        shop.name,
        style: textTheme.bodyText1,
      ),
      subtitle: Text(
        shop.address,
        style: textTheme.bodyText2,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.navigate_next_rounded,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
