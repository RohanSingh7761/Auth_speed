import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You are logged in as ${user.email}"),
          MaterialButton(
            onPressed: signUserOut,
            color: Colors.blue,
            child: const Text("Sign Out"),
          )
        ],
      ),
    ));
  }
}
