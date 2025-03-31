import 'dart:core';

import 'package:collection/collection.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_colors/app_colors.dart';
import 'package:flutter_assignments/common/app_ui_configs/app_fonts/app_fonts.dart';

import 'dropdown_item.dart';
import 'dropdown_item_model.dart';
import 'dropdown_model.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  /// list of dropdown items
  final DropdownModel<T> model;

  /// function called when a item is selected from [model]
  final AsyncValueSetter<T>? onSelect;

  const CustomDropdownButton({required this.model, this.onSelect, super.key});

  @override
  State<CustomDropdownButton<T>> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  DropdownItemModel<T>? _selectedItem;
  late final TextEditingController _controller;
  late final FocusNode _dropdownFocusNode;
  TextEditingController? _defaultController;

  Future<void> onSelect(DropdownItemModel<T>? item) async {
    if (item != null) {
      setState(() => _selectedItem = item);
      try {
        await widget.onSelect?.call(item.value);
      } on Exception catch (e) {
        debugPrint(e.toString());
      }
    }
  }

  @override
  void initState() {
    _selectedItem = widget.model.dropdownItemGroups
        .expand((group) => group.dropdownItems)
        .firstWhereOrNull(
          (dropdownItem) =>
              dropdownItem.value == widget.model.initialSelectedValue,
        );

    _defaultController = TextEditingController();
    _controller = _defaultController!;

    _dropdownFocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    _defaultController?.dispose();
    _dropdownFocusNode.dispose();
    super.dispose();
  }

  List<DropdownMenuItem<DropdownItemModel<T>>> get _dropdownItems {
    final dropDownItems = <DropdownMenuItem<DropdownItemModel<T>>>[];

    for (final group in widget.model.dropdownItemGroups) {
      if (group.title != null) {
        dropDownItems.add(
          DropdownMenuItem<DropdownItemModel<T>>(
            enabled: false,
            child: _DropdownItemGroupTitle(title: group.title!),
          ),
        );
      }

      for (final model in group.dropdownItems) {
        dropDownItems.add(
          DropdownMenuItem<DropdownItemModel<T>>(
            value: model,
            enabled: !model.disabled,
            child: DropdownItem<T>(
              model: model,
              isSelected: model == _selectedItem,
            ),
          ),
        );
      }
    }
    return dropDownItems;
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.model;
    return DropdownButtonHideUnderline(
      child: DropdownButton2<DropdownItemModel<T>>(
        focusNode: _dropdownFocusNode,
        isExpanded: true,
        hint: _HintText(hintText: model.hintText),
        buttonStyleData: ButtonStyleData(
          padding:
              widget.model.padding ?? const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.lighterGrey, // Outline color
              width: 1, // Border thickness
            ),
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          )
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        ),
        items: _dropdownItems,
        value: _selectedItem,
        onChanged: onSelect,
        menuItemStyleData: MenuItemStyleData(
          selectedMenuItemBuilder:
              (_, child) =>
                  Material(color: AppColors.veryLighterGrey, child: child),
        ),
        customButton: model.customButton,
        alignment: Alignment.bottomCenter,
        onMenuStateChange: (isOpen) {
          if (!isOpen) {
            _controller.clear();
            // If user selects an item after interacting with text field
            // dropdown button stucks with focus
            // which means stucks at different bg color
            // to avoid that unfocus it after small delay
            Future.delayed(const Duration(milliseconds: 100), () {
              if (context.mounted) {
                _dropdownFocusNode.unfocus();
              }
            });
          }
        },
        iconStyleData: const IconStyleData(
          icon: _MenuIcon(iconData: Icons.keyboard_arrow_down_sharp),
          openMenuIcon: _MenuIcon(iconData: Icons.keyboard_arrow_up_sharp),
        ),
      ),
    );
  }
}

class _DropdownItemGroupTitle extends StatelessWidget {
  final String title;

  const _DropdownItemGroupTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppFonts.medium());
  }
}

class _MenuIcon extends StatelessWidget {
  final IconData iconData;

  const _MenuIcon({required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8), child: Icon(iconData));
  }
}

class _HintText extends StatelessWidget {
  final String? hintText;

  const _HintText({this.hintText});

  @override
  Widget build(BuildContext context) {
    if (hintText == null) {
      return const SizedBox.shrink();
    }

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        hintText!,
        style: AppFonts.medium().copyWith(color: AppColors.lighterGrey),
      ),
    );
  }
}
