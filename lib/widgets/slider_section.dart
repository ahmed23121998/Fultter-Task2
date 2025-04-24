import 'package:flutter/material.dart';
class SliderSection extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const SliderSection({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            '${value.toStringAsFixed(0)} USD',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Slider(
          value: value,
          min: 0,
          max: 500,
          divisions: 5,
          label: '${value.toStringAsFixed(0)} USD',
          onChanged: onChanged,
        ),
      ],
    );
  }
}
