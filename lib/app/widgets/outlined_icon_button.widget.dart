import 'package:flutter/material.dart';

class OutlinedIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  const OutlinedIconButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(icon),
        ),
      ),
    );
  }
}
