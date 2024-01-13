import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget? child;
  final Color? color;
  const Box({super.key,
  required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,borderRadius: BorderRadius.circular(8),
      ),
      width: 250,
      height: 250,
      padding: const EdgeInsets.all(55),
      child: child,
    );
  }
}
