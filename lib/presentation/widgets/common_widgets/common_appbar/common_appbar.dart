import 'package:flutter/material.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_fonts/app_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title, style: AppFonts.medium()));
  }
}
