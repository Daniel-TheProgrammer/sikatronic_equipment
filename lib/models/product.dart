import 'package:get/get.dart';
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
      label: 'industry'.tr,
      description:
          'Machines for production, production lines, equipment for industry'.tr,
      image: 'assets/imgs/engine001.png',
      learnMore:
          "Sikatronics equipment assists you technically and commercially to have new or used machines for production, production lines and equipment in the field of agri-food, electronics, metal and forging, packaging and conditioning, pharmaceutical, chemical, textiles, printing machines, wood, plastic, industrial equipment,... and any machine or equipment of your field".tr),
  Product(
      label: 'logistics & machinery'.tr,
      description:
          'Truck, machinery, tractors, commercial vehicle, trailer, semi trailer.'.tr,
      image: 'assets/imgs/Group.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used tractors,trucks,commercial vehicle,'
              ' machinery, roller, cranes,bulldozer,tractor agricultural, forklift ,generator,... and any logistic or machinery of your field'.tr),
  Product(
      label: 'transport',
      description: 'Bus, Car, Moto'.tr,
      image: 'assets/imgs/Frame.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used car, bus or motorbike of any brand'.tr),
  Product(
      label: 'construction'.tr,
      description: 'Machines, equipments'.tr,
      image: 'assets/imgs/construction.png',
      learnMore:
          "Sikatronics equipment assists you technically and commercially to have new or used equipments, machines, machineries in the construction field, like concrete machines, blocks and bricks machines,... and any machines you need.".tr),
  Product(
      label: 'agriculture & breeding'.tr,
      description: 'Machines, engines,equipements'.tr,
      image: 'assets/imgs/Group3.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'.tr),
  Product(
      label: 'trading'.tr,
      description: 'Agri-food,construction,raw materials for insdustries'.tr,
      image: 'assets/imgs/raw materials.png',
      learnMore:
          'Sikatronics equipment assists you technically and commercially to have new or used equipments ,'
              'machine for any product you grow(cassava,corn,peanut,cocoa,coffee, riz,oil...) or breed'.tr),
  Product(
      label: 'maintenance'.tr,
      description: 'Maintenance of machines or equivalence'.tr,
      image: 'assets/imgs/Group (1).png',
      learnMore:
          'Sikatronics equipment assists you technically to do maintenance in your equipment and machines. '
              'You fit any malfunction.'.tr),
  Product(
      label: 'other services'.tr,
      description:
          'we provide diverse sets of services to our clients, get in touch to know more'.tr,
      image: 'assets/imgs/Group (2).png',
      learnMore: 'other services ...'.tr),
];
