import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/models/product_model.dart';

import '../../models/product.dart';
import '../../widget/progress_indication.dart';
import 'list_of_product_controller.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  ListOfProductScreenController controller =
      Get.put(ListOfProductScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Obx((() {
        return controller.progress.isTrue
            ? linearProgress()
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: Get.height / 3.3,
                              maxWidth: Get.width * .70),
                          child: Text(
                            'listOfProdHi ${controller.userName.toString()} ${controller.userLastName.toString()}, listOfProdWhatYouNeed'.tr,
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
                              label: products[index].label.toString(),
                              description: products[index].description.toString(),
                              image: products[index].image.toString(),
                              learnMore: products[index].learnMore.toString(),
                            );
                          })))
                ],
              );
      }))),
    );
  }
}
