import 'package:app_shop/model/Product.dart';
import 'package:uuid/uuid.dart';

class Demo {
  static List<Product> products = [
    Product(
      title: 'Samosa',
      imageUrl:
          'https://images.unsplash.com/photo-1622715395488-71045e2a4990?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1887&q=80',
      price: 5.0,
      id: const Uuid().v4(),
    ),
    Product(
      title: 'Laddu',
      imageUrl:
          'https://images.unsplash.com/photo-1605194000384-439c3ced8d15?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
      price: 10,
      id: const Uuid().v4(),
    ),
    Product(
      title: 'Dosa',
      imageUrl:
          'https://media.istockphoto.com/photos/masala-sin-picture-id481750586?s=612x612',
      price: 35,
      id: const Uuid().v4(),
    ),
    Product(
      title: 'Chowmein',
      imageUrl:
          'https://media.istockphoto.com/photos/nepali-chinese-chowmein-picture-id1195969549?s=612x612',
      price: 30,
      id: const Uuid().v4(),
    ),
    Product(
      title: 'Momos',
      imageUrl:
          'https://media.istockphoto.com/photos/japanese-dumplings-gyoza-with-pork-meat-and-vegetables-picture-id1133151212?s=612x612',
      price: 30,
      id: const Uuid().v4(),
    ),
    Product(
      title: 'Eggroll',
      imageUrl:
          'https://media.istockphoto.com/photos/image-of-three-springs-rolls-laying-on-a-white-background-picture-id132038607?s=612x612',
      price: 30,
      id: const Uuid().v4(),
    ),
    Product(
      title: 'Burger',
      imageUrl:
          'https://media.istockphoto.com/photos/burger-with-beef-and-bacon-picture-id1166797165?s=612x612',
      price: 20,
      id: const Uuid().v4(),
    ),
  ];
}
