import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dropdown_item_model.dart';

part 'dropdown_model.freezed.dart';

@freezed
class DropdownModel<T> with _$DropdownModel<T> {
  const factory DropdownModel({
    required List<DropdownItemGroup<T>> dropdownItemGroups,

    /// initial selected item
    T? initialSelectedValue,

    ///text to shown when no item selected
    String? hintText,

    ///padding to show on selected item model
    EdgeInsets? padding,

    ///color to show on selected item model
    Color? color,

    /// Replacement for dropdown button
    final Widget? customButton,
  }) = _DropdownModel<T>;
}

class DropdownItemGroup<T> {
  final List<DropdownItemModel<T>> dropdownItems;
  final String? title;

  const DropdownItemGroup({required this.dropdownItems, this.title});
}
