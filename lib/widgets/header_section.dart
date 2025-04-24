import 'package:flutter/material.dart';
class HeaderSection extends StatelessWidget {
  final String title ;
    final String subtitle ;
  const HeaderSection({super.key, required this.title, required this.subtitle} 
  );
 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
