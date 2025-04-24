import 'package:flutter/material.dart';
class ToggleSection extends StatelessWidget {
  final bool isChecked;
  final bool isSwitched;
  final ValueChanged<bool?> onCheckboxChanged;
  final ValueChanged<bool> onSwitchChanged;
  const ToggleSection({
    super.key,
    required this.isChecked,
    required this.isSwitched,
    required this.onCheckboxChanged,
    required this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: onCheckboxChanged,
            ),
            const Text('Remember me'),
          ],
        ),
        Switch(
          value: isSwitched,
          onChanged: onSwitchChanged,
        ),
      ],
    );
  }
}
