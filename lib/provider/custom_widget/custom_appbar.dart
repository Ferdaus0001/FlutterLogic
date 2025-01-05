import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final Color? barColor;
  final double? elevation;
  final List<Widget>? actions;
  final bool centerTitle;
  final double toolbarHeight;

  const CustomAppBar({
    super.key,
    this.leading,
    this.title,
    this.barColor,
    this.elevation,
    this.actions,
    this.centerTitle = false, // Default value set
    this.toolbarHeight = kToolbarHeight, // Default height for AppBar
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      elevation: elevation ?? 4.0,
      centerTitle: centerTitle,
      backgroundColor: barColor ?? Colors.blue,
      leading: leading,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
