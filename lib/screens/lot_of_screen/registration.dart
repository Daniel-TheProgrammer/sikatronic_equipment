import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sikatronics_equipment/widget/my_input_fields.dart';

class RegitrationScreen extends StatelessWidget {
  RegitrationScreen({super.key});

  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _lastNameEditingController =
      TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _companyNameEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: Get.height / 8,
                  width: Get.width / 1.5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Image.asset('assets/imgs/logo_violet.png'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Colors.grey,
                  ),
                ),
              ),
              MyInputField(
                title: 'First Name',
                textInputType: TextInputType.text,
                hintText: 'enter your name here',
                controller: _nameEditingController,
                allowKeyboard: true,
              ),
              MyInputField(
                title: 'Last name',
                textInputType: TextInputType.text,
                hintText: 'last name',
                controller: _lastNameEditingController,
                allowKeyboard: true,
              ),
              MyInputField(
                title: 'Email',
                textInputType: TextInputType.emailAddress,
                hintText: 'Enter your email',
                controller: _emailEditingController,
                allowKeyboard: true,
              ),
              MyInputField(
                title: 'Company name ',
                textInputType: TextInputType.emailAddress,
                hintText: 'Enter company name',
                controller: _companyNameEditingController,
                allowKeyboard: true,
              ),
              MyInputField(
                title: 'Country',
                hintText: 'Country',
                allowKeyboard: false,
                widget:
                    //here i just add a dummy widget but in furure in will be a backage that display countries, also you cant type
                    Row(children: [
                  Container(
                    color: Colors.red.shade200,
                    height: 18,
                    width: 20,
                    child: Image.asset(
                      'assets/imgs/arrow+england.png',
                      height: 18,
                      width: 20,
                    ),
                  )
                ]),
              ),
              MyInputField(
                title: 'Phone',
                hintText: '+39 666-666-666',
                allowKeyboard: true,
                widget: Row(children: [
                  Container(
                    color: Colors.red.shade200,
                    height: 18,
                    width: 20,
                    child: Image.asset(
                      'assets/imgs/arrow+england.png',
                      height: 18,
                      width: 20,
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
