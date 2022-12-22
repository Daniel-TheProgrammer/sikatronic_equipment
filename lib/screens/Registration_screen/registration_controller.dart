import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistrationScreenController extends GetxController {
  var countryName = 'Country'.obs;
  var countryFlag = '🇬🇧'.obs;
  var phoneInit = '39'.obs;

  getCountryName(String countryname, String countryflag) {
    countryName.value = countryname;
    countryFlag.value = countryflag;
  }

  getPhoneInit(String phoneNum) {
    phoneInit.value = phoneNum;
  }

  Future<void> addSellers(
      {String? id,
      String? name,
      String? lastName,
      String? email,
      String? companyName,
      String? country,
      String? phone}) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection('sellers');
    return await users
        .doc(id)
        .set({
          'sid': id,
          'name': name,
          'lastname': lastName,
          'company': companyName,
          'email': email,
          'country': country,
          'phone': phone,
        })
        .then((value) => print("Seller Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
