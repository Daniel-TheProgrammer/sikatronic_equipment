import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ListOfProductScreenController extends GetxController {
  String? userId = FirebaseAuth.instance.currentUser!.uid;
  var userName = ''.obs;
  var userLastName = ''.obs;
  var companyName = ''.obs;
  var country = ''.obs;
  var phone = ''.obs;
  var email = ''.obs;
  var progress = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getInfo();
  }

  getInfo() async {
    progress.value = true;
    final getData = await FirebaseFirestore.instance
        .collection('sellers')
        .doc(userId)
        .get();
    final Map<String, dynamic> data = getData.data() as Map<String, dynamic>;
    userName.value = data['name'];
    userLastName.value = data['lastname'];
    phone.value = data['phone'];
    country.value = data['country'];
    email.value = data['email'];

    progress.value = false;
  }
}
