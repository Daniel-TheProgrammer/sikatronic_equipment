import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sikatronics_equipment/screens/Screen01/screen01.dart';

import 'screens/LIstOfProduct/list_of_product.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (!snapshot.hasData) {
            return const FirstScreen();
          }
          if (snapshot.hasError) {
            return const FirstScreen();
          } else {
            return ProductList();
          }
        }));
  }
}
