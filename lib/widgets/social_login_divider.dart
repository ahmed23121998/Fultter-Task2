import 'package:flutter/material.dart';
class SocialLoginDivider extends StatelessWidget {
  const SocialLoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'or continue with',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
