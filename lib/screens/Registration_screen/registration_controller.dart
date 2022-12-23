import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistrationScreenController extends GetxController {
  var countryName = 'Country'.obs;
  var countryFlag = '🇬🇧'.obs;
  var phoneInit = '39'.obs;
  var progress = false.obs;

  getCountryName(String countryname, String countryflag) {
    countryName.value = countryname;
    countryFlag.value = countryflag;
  }

  getPhoneInit(String phoneNum) {
    phoneInit.value = phoneNum;
  }

  Future<void> signIn(String email) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.trim(), password: email.toUpperCase().trim())
        .catchError((error) {
      print('signin error is :$error');
    });
  }

  Future<void> addSellers(
      {String? name,
      String? lastName,
      String? email,
      String? companyName,
      String? country,
      String? phone}) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection('sellers');
    String id = FirebaseAuth.instance.currentUser!.uid;
    return await users
        .doc(id)
        .set({
          'id': id,
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

  progressOnOff(bool progressing) {
    progress.value = progressing;
  }
}
