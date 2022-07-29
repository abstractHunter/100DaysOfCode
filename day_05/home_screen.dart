import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Signed in as : "),
            const SizedBox(height: 8),
            Text(user.email!),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              child: const Text("log out"),
            )
          ],
        ),
      ),
    );
  }
}
