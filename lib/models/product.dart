class Product {
  String label;
  String description;
  String image;
  String learnMore;
  Product({
    required this.label,
    required this.description,
    required this.image,
    required this.learnMore,
  });
}

List<Product> products = [
  Product(
      label: 'industry',
      description:
          'Machines for production, production lines, equipment for industry',
      image: 'assets/imgs/engine001.png',
      learnMore:
          "Sikatronics equipment assists you technically and commercially to have new or used machines for production, production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... and any machine or equipment of your field"),
  Product(
      label: 'logistics & machinery',
      description:
          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer. ',
      image: 'assets/imgs/Group.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle, machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or machinery of your field'),
  Product(
      label: 'transport',
      description: 'Bus, Car, Moto',
      image: 'assets/imgs/Frame.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used car, bus or motorbike of any brand'),
  Product(
      label: 'construction',
      description: 'Machines, equipments',
      image: 'assets/imgs/construction.png',
      learnMore:
          "Sikatronics equipment assists you technically and commercially to have new or used equipments, machines, machineries in the construction field, like concrete machines, blocks and bricks machines,... and any machines you need."),
  Product(
      label: 'agriculture & breeding',
      description: 'Machines, engines,equipements',
      image: 'assets/imgs/Group3.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'),
  Product(
      label: 'trading',
      description: 'Agri-food,construction,raw materials for insdustries',
      image: 'assets/imgs/raw materials.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'),
  Product(
      label: 'maintenance',
      description: 'Maintenance of machines or equivalence',
      image: 'assets/imgs/Group (1).png',
      learnMore:
          'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. You fit any malfunction.'),
  Product(
      label: 'other services',
      description:
          'we provide diverse sets of services to our clients, get in touch to know more',
      image: 'assets/imgs/Group (2).png',
      learnMore: 'other services ...'),
];
