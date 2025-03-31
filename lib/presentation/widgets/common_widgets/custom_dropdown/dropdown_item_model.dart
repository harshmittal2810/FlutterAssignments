import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_colors/app_colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_item_model.freezed.dart';

// ignore: comment_references
/// A model for [DropdownItem] component.
@freezed
class DropdownItemModel<T> with _$DropdownItemModel<T> {
  const factory DropdownItemModel({
    /// Main text label.
    required String text,
    required T value,
    @Default(false) bool disabled,

    /// prefix of the menu item.
    DropdownItemAffixModel? prefix,

    /// suffix of the menu item
    DropdownItemAffixModel? suffix,
    @Default(EdgeInsets.symmetric(vertical: 4, horizontal: 8))
    EdgeInsetsGeometry padding,
  }) = _DropdownItemModel<T>;
}

/// Model describing what is shown on the left side of item.
@freezed
class DropdownItemAffixModel with _$DropdownItemAffixModel {
  const factory DropdownItemAffixModel.icon({
    /// An graphic asset to show.
    required Widget icon,
  }) = _DropdownItemAffixModelGraphicAssetPointer;
}
