class Product {
  String label;
  String description;
  String image;
  Product({
    required this.label,
    required this.description,
    required this.image,
  });
}

List<Product> products = [
  Product(
      label: 'industry',
      description:
          'Machines for production, production lines, equipment for industry',
      image: 'assets/prodList/1.png'),
  Product(
      label: 'industry',
      description:
          'Machines for production, production lines, equipment for industry',
      image: 'assets/prodList/1.png'),
  Product(
      label: 'logistics & machinery',
      description:
          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer. ',
      image: 'assets/prodList/2.png'),
  Product(
      label: 'transport',
      description: 'Bus, Car, Moto',
      image: 'assets/prodList/3.png'),
];
