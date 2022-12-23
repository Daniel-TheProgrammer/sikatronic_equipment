import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SendRequestPage extends StatelessWidget {
  SendRequestPage({Key? key}) : super(key: key);

  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _companyEditingController = TextEditingController();
  TextEditingController _productDetailsEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height,
                decoration: const BoxDecoration(
                  color: Color(0xff361847),
                  //  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'INDUSTRY',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      fieldLabel(label: 'Your Name'),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: inputDeco,
                        style: const TextStyle(color: Colors.white),
                        controller: _nameEditingController,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      fieldLabel(label: 'Your Company'),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: inputDeco.copyWith(
                          hintText: 'Enter your Company\'s Name',
                        ),
                        controller: _companyEditingController,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      fieldLabel(label: 'Product Details'),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: inputDeco.copyWith(
                          hintText: 'Enter your Product Details',
                        ),
                        maxLength: 1000,
                        maxLines: 10,
                        controller: _productDetailsEditingController,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      MaterialButton(
                        color: Colors.white,
                        minWidth: double.infinity,
                        height: 45,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        onPressed: () {
                          Validation();
                        },
                        child: const Text(
                          'Send Request',
                          style: TextStyle(color: Color(0xff361847)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Validation() {
    if (_nameEditingController.text.isEmpty ||
        _companyEditingController.text.isEmpty ||
        _productDetailsEditingController.text.isEmpty) {
      print('not validated');
      return Get.snackbar('an error has been occured',
          'you have to fill al the fields properly',
          snackPosition: SnackPosition.BOTTOM,
          maxWidth: Get.width,
          backgroundColor: Colors.white,
          colorText: Colors.pink,
          icon: const Icon(
            Icons.warning_amber_outlined,
            color: Colors.red,
          ));
    } else {
      print('validated');
    }
  }

  Row fieldLabel({String? label}) {
    return Row(
      children: [
        Text(label!,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 18))
      ],
    );
  }
}

InputDecoration inputDeco = const InputDecoration(
  hintText: 'Enter your Name.',
  hintStyle: TextStyle(color: Colors.white),
  labelStyle: TextStyle(color: Colors.white),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);
