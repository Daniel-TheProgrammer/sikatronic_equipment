import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/models/product_model.dart';

import '../../models/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxHeight: Get.height / 3.3, maxWidth: Get.width * .70),
                    child: Text(
                      'Hi Alane Johan, which equipment do you need?',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.red.withOpacity(.4),
                    child: Image.asset('assets/imgs/arrow+england.png'),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: ((context, index) {
                      return ProductModel(
                          label: products[index].label,
                          description: products[index].description,
                          image: products[index].image);
                    })))
          ],
        ),
      ),
    );
  }
}
