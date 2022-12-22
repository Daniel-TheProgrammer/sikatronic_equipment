import 'package:get/get.dart';

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
}
