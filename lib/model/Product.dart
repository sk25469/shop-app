class Product {
  final String title;
  final String imageUrl;
  final double price;
  final String id;

  Product({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.id,
  });

  @override
  String toString() {
    print('Title : $title');
    print('Title : $id');
    return super.toString();
  }
}
