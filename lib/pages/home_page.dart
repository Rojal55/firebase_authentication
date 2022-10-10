// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    Future signOut() async{
      await FirebaseAuth.instance.signOut();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                user.email!,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                onPressed: signOut,
                icon: Icon(
                  Icons.arrow_back,
                  size: 32,
                ),
                label: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 20),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
