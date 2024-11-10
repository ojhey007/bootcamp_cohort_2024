import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  Function()? onTap;
  final Widget child;
  IconData? icon;
  Color? bgColor;
  Color? iconColor;
  AppElevatedButton(
      {super.key,
      this.onTap,
      required this.child,
      this.bgColor,
      this.icon,
      this.iconColor});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size(100, 40)),
          backgroundColor: WidgetStatePropertyAll(bgColor)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                )
              : Container(),
          child,
        ],
      ),
    );
  }
}
