import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  Function()? onTap;
  final Widget child;
  AppOutlinedButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: child,
      style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.teal)),
    );
  }
}
