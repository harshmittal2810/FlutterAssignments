import 'package:flutter/material.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_colors/app_colors.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_fonts/app_fonts.dart';
import 'dropdown_item_model.dart';

/// A dropdown item used in dropdown menus.
///
class DropdownItem<T> extends StatelessWidget {
  final DropdownItemModel<T> model;
  final bool isSelected;

  const DropdownItem({
    required this.model,
    required this.isSelected,
    super.key,
  });

  Color get _textColor {
    if (isSelected) {
      return AppColors.primaryTextColor;
    }

    if (model.disabled) {
      return AppColors.lighterGrey;
    }
    return AppColors.greyColor;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (model.prefix != null) ...[
          model.prefix!.icon,
          const SizedBox(width: 8),
        ],
        Text(model.text, style: AppFonts.medium().copyWith(color: _textColor)),
      ],
    );
  }
}
