import 'dart:io';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;

  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      splashColor: Colors.transparent,
      splashRadius: 25,
      iconSize: iconSize ?? 25,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(minWidth: minWidth ?? 40),
      icon: Icon(
        icon,
        color: iconColor ?? context.theme.greyColor,
      ),
    );
  }
}
