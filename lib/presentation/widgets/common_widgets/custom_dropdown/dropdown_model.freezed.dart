// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropdownModel<T> {
  List<DropdownItemGroup<T>> get dropdownItemGroups =>
      throw _privateConstructorUsedError;

  /// initial selected item
  T? get initialSelectedValue => throw _privateConstructorUsedError;

  ///text to shown when no item selected
  String? get hintText => throw _privateConstructorUsedError;

  ///padding to show on selected item model
  EdgeInsets? get padding => throw _privateConstructorUsedError;

  ///color to show on selected item model
  Color? get color => throw _privateConstructorUsedError;

  /// Replacement for dropdown button
  Widget? get customButton => throw _privateConstructorUsedError;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownModelCopyWith<T, DropdownModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownModelCopyWith<T, $Res> {
  factory $DropdownModelCopyWith(
          DropdownModel<T> value, $Res Function(DropdownModel<T>) then) =
      _$DropdownModelCopyWithImpl<T, $Res, DropdownModel<T>>;
  @useResult
  $Res call(
      {List<DropdownItemGroup<T>> dropdownItemGroups,
      T? initialSelectedValue,
      String? hintText,
      EdgeInsets? padding,
      Color? color,
      Widget? customButton});
}

/// @nodoc
class _$DropdownModelCopyWithImpl<T, $Res, $Val extends DropdownModel<T>>
    implements $DropdownModelCopyWith<T, $Res> {
  _$DropdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropdownItemGroups = null,
    Object? initialSelectedValue = freezed,
    Object? hintText = freezed,
    Object? padding = freezed,
    Object? color = freezed,
    Object? customButton = freezed,
  }) {
    return _then(_value.copyWith(
      dropdownItemGroups: null == dropdownItemGroups
          ? _value.dropdownItemGroups
          : dropdownItemGroups // ignore: cast_nullable_to_non_nullable
              as List<DropdownItemGroup<T>>,
      initialSelectedValue: freezed == initialSelectedValue
          ? _value.initialSelectedValue
          : initialSelectedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      customButton: freezed == customButton
          ? _value.customButton
          : customButton // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropdownModelImplCopyWith<T, $Res>
    implements $DropdownModelCopyWith<T, $Res> {
  factory _$$DropdownModelImplCopyWith(_$DropdownModelImpl<T> value,
          $Res Function(_$DropdownModelImpl<T>) then) =
      __$$DropdownModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<DropdownItemGroup<T>> dropdownItemGroups,
      T? initialSelectedValue,
      String? hintText,
      EdgeInsets? padding,
      Color? color,
      Widget? customButton});
}

/// @nodoc
class __$$DropdownModelImplCopyWithImpl<T, $Res>
    extends _$DropdownModelCopyWithImpl<T, $Res, _$DropdownModelImpl<T>>
    implements _$$DropdownModelImplCopyWith<T, $Res> {
  __$$DropdownModelImplCopyWithImpl(_$DropdownModelImpl<T> _value,
      $Res Function(_$DropdownModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropdownItemGroups = null,
    Object? initialSelectedValue = freezed,
    Object? hintText = freezed,
    Object? padding = freezed,
    Object? color = freezed,
    Object? customButton = freezed,
  }) {
    return _then(_$DropdownModelImpl<T>(
      dropdownItemGroups: null == dropdownItemGroups
          ? _value._dropdownItemGroups
          : dropdownItemGroups // ignore: cast_nullable_to_non_nullable
              as List<DropdownItemGroup<T>>,
      initialSelectedValue: freezed == initialSelectedValue
          ? _value.initialSelectedValue
          : initialSelectedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      customButton: freezed == customButton
          ? _value.customButton
          : customButton // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$DropdownModelImpl<T> implements _DropdownModel<T> {
  const _$DropdownModelImpl(
      {required final List<DropdownItemGroup<T>> dropdownItemGroups,
      this.initialSelectedValue,
      this.hintText,
      this.padding,
      this.color,
      this.customButton})
      : _dropdownItemGroups = dropdownItemGroups;

  final List<DropdownItemGroup<T>> _dropdownItemGroups;
  @override
  List<DropdownItemGroup<T>> get dropdownItemGroups {
    if (_dropdownItemGroups is EqualUnmodifiableListView)
      return _dropdownItemGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropdownItemGroups);
  }

  /// initial selected item
  @override
  final T? initialSelectedValue;

  ///text to shown when no item selected
  @override
  final String? hintText;

  ///padding to show on selected item model
  @override
  final EdgeInsets? padding;

  ///color to show on selected item model
  @override
  final Color? color;

  /// Replacement for dropdown button
  @override
  final Widget? customButton;

  @override
  String toString() {
    return 'DropdownModel<$T>(dropdownItemGroups: $dropdownItemGroups, initialSelectedValue: $initialSelectedValue, hintText: $hintText, padding: $padding, color: $color, customButton: $customButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownModelImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._dropdownItemGroups, _dropdownItemGroups) &&
            const DeepCollectionEquality()
                .equals(other.initialSelectedValue, initialSelectedValue) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.customButton, customButton) ||
                other.customButton == customButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dropdownItemGroups),
      const DeepCollectionEquality().hash(initialSelectedValue),
      hintText,
      padding,
      color,
      customButton);

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownModelImplCopyWith<T, _$DropdownModelImpl<T>> get copyWith =>
      __$$DropdownModelImplCopyWithImpl<T, _$DropdownModelImpl<T>>(
          this, _$identity);
}

abstract class _DropdownModel<T> implements DropdownModel<T> {
  const factory _DropdownModel(
      {required final List<DropdownItemGroup<T>> dropdownItemGroups,
      final T? initialSelectedValue,
      final String? hintText,
      final EdgeInsets? padding,
      final Color? color,
      final Widget? customButton}) = _$DropdownModelImpl<T>;

  @override
  List<DropdownItemGroup<T>> get dropdownItemGroups;

  /// initial selected item
  @override
  T? get initialSelectedValue;

  ///text to shown when no item selected
  @override
  String? get hintText;

  ///padding to show on selected item model
  @override
  EdgeInsets? get padding;

  ///color to show on selected item model
  @override
  Color? get color;

  /// Replacement for dropdown button
  @override
  Widget? get customButton;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownModelImplCopyWith<T, _$DropdownModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
