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
      label: 'logistics & machinery',
      description:
          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer. ',
      image: 'assets/prodList/2.png'),
  Product(
      label: 'transport',
      description: 'Bus, Car, Moto',
      image: 'assets/prodList/2.png'),
  Product(
      label: 'construction',
      description: 'Machines, equipments',
      image: 'assets/prodList/4.png'),
  Product(
      label: 'agriculture & breeding',
      description: 'Machines, engines,equipements',
      image: 'assets/prodList/4.png'),
  Product(
      label: 'trading',
      description: 'Agri-food,construction,raw materials for insdustries',
      image: 'assets/prodList/7.png'),
  Product(
      label: 'maintenance',
      description: 'Maintenance of machines or equivalence',
      image: 'assets/prodList/2.png'),
  Product(
      label: 'other services',
      description:
          'we provide diverse sets of services to our clients, get in touch to know more',
      image: 'assets/prodList/6.png'),
];
