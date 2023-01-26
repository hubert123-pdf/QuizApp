import 'package:flutter/material.dart';
import 'package:quiz_app/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ElevatedButton(
        child: const Text('Sign out'),
        onPressed: () async {
          await AuthService().anonSignOut();
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        } 

      ),
    );
  }
}