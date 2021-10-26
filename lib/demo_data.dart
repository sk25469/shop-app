import 'package:app_shop/model/Product.dart';
import 'package:uuid/uuid.dart';

import 'model/Shop.dart';

class Demo {
  static List<Shop> shops = [
    Shop(
      address: 'Address no. 1',
      name: 'Shop name 1',
      imageUrl:
          'https://images.unsplash.com/photo-1585518419759-7fe2e0fbf8a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1924&q=80',
    ),
    Shop(
      address: 'Address no. 2',
      name: 'Shop name 2',
      imageUrl:
          'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 3',
      name: 'Shop name 3',
      imageUrl:
          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 4',
      name: 'Shop name 4',
      imageUrl:
          'https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80',
    ),
    Shop(
      address: 'Address no. 5',
      name: 'Shop name 5',
      imageUrl:
          'https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80',
    ),
    Shop(
      address: 'Address no. 1',
      name: 'Shop name 1',
      imageUrl:
          'https://images.unsplash.com/photo-1585518419759-7fe2e0fbf8a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1924&q=80',
    ),
    Shop(
      address: 'Address no. 2',
      name: 'Shop name 2',
      imageUrl:
          'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 3',
      name: 'Shop name 3',
      imageUrl:
          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
    ),
    Shop(
      address: 'Address no. 4',
      name: 'Shop name 4',
      imageUrl:
          'https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80',
    ),
    Shop(
      address: 'Address no. 5',
      name: 'Shop name 5',
      imageUrl:
          'https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80',
    ),
  ];
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

  List<Product> cartProduct = [
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
