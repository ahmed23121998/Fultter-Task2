import 'package:flutter/material.dart';
class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton.icon(
          
          onPressed: () {
            print('Continue with Google pressed');
          },
          icon: const Icon(Icons.g_mobiledata, color: Colors.black),
          label: const Text(
            'Continue with Google',
            style: TextStyle(color: Colors.black),
          ),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        OutlinedButton.icon(
          onPressed: () {
            print('Continue with Facebook pressed');
          },
          icon: const Icon(Icons.facebook, color: Colors.blue),
          label: const Text(
            'Continue with Facebook',
            style: TextStyle(color: Colors.black),
          ),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ],
    );
  }
}
