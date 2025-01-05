class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});

  List<Product> products = [
    Product(name: "Smartphone", price: 699.99),
    Product(name: "Laptop", price: 1199.99),
    Product(name: "Headphones", price: 199.99),
  ];

}
