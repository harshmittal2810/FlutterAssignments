// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropdownItemModel<T> {
  /// Main text label.
  String get text => throw _privateConstructorUsedError;
  T get value => throw _privateConstructorUsedError;
  bool get disabled => throw _privateConstructorUsedError;

  /// prefix of the menu item.
  DropdownItemAffixModel? get prefix => throw _privateConstructorUsedError;

  /// suffix of the menu item
  DropdownItemAffixModel? get suffix => throw _privateConstructorUsedError;
  EdgeInsetsGeometry get padding => throw _privateConstructorUsedError;

  /// Create a copy of DropdownItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownItemModelCopyWith<T, DropdownItemModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownItemModelCopyWith<T, $Res> {
  factory $DropdownItemModelCopyWith(DropdownItemModel<T> value,
          $Res Function(DropdownItemModel<T>) then) =
      _$DropdownItemModelCopyWithImpl<T, $Res, DropdownItemModel<T>>;
  @useResult
  $Res call(
      {String text,
      T value,
      bool disabled,
      DropdownItemAffixModel? prefix,
      DropdownItemAffixModel? suffix,
      EdgeInsetsGeometry padding});

  $DropdownItemAffixModelCopyWith<$Res>? get prefix;
  $DropdownItemAffixModelCopyWith<$Res>? get suffix;
}

/// @nodoc
class _$DropdownItemModelCopyWithImpl<T, $Res,
        $Val extends DropdownItemModel<T>>
    implements $DropdownItemModelCopyWith<T, $Res> {
  _$DropdownItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? prefix = freezed,
    Object? suffix = freezed,
    Object? padding = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as DropdownItemAffixModel?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as DropdownItemAffixModel?,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsetsGeometry,
    ) as $Val);
  }

  /// Create a copy of DropdownItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DropdownItemAffixModelCopyWith<$Res>? get prefix {
    if (_value.prefix == null) {
      return null;
    }

    return $DropdownItemAffixModelCopyWith<$Res>(_value.prefix!, (value) {
      return _then(_value.copyWith(prefix: value) as $Val);
    });
  }

  /// Create a copy of DropdownItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DropdownItemAffixModelCopyWith<$Res>? get suffix {
    if (_value.suffix == null) {
      return null;
    }

    return $DropdownItemAffixModelCopyWith<$Res>(_value.suffix!, (value) {
      return _then(_value.copyWith(suffix: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DropdownItemModelImplCopyWith<T, $Res>
    implements $DropdownItemModelCopyWith<T, $Res> {
  factory _$$DropdownItemModelImplCopyWith(_$DropdownItemModelImpl<T> value,
          $Res Function(_$DropdownItemModelImpl<T>) then) =
      __$$DropdownItemModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String text,
      T value,
      bool disabled,
      DropdownItemAffixModel? prefix,
      DropdownItemAffixModel? suffix,
      EdgeInsetsGeometry padding});

  @override
  $DropdownItemAffixModelCopyWith<$Res>? get prefix;
  @override
  $DropdownItemAffixModelCopyWith<$Res>? get suffix;
}

/// @nodoc
class __$$DropdownItemModelImplCopyWithImpl<T, $Res>
    extends _$DropdownItemModelCopyWithImpl<T, $Res, _$DropdownItemModelImpl<T>>
    implements _$$DropdownItemModelImplCopyWith<T, $Res> {
  __$$DropdownItemModelImplCopyWithImpl(_$DropdownItemModelImpl<T> _value,
      $Res Function(_$DropdownItemModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DropdownItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? prefix = freezed,
    Object? suffix = freezed,
    Object? padding = null,
  }) {
    return _then(_$DropdownItemModelImpl<T>(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as DropdownItemAffixModel?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as DropdownItemAffixModel?,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsetsGeometry,
    ));
  }
}

/// @nodoc

class _$DropdownItemModelImpl<T>
    with DiagnosticableTreeMixin
    implements _DropdownItemModel<T> {
  const _$DropdownItemModelImpl(
      {required this.text,
      required this.value,
      this.disabled = false,
      this.prefix,
      this.suffix,
      this.padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 8)});

  /// Main text label.
  @override
  final String text;
  @override
  final T value;
  @override
  @JsonKey()
  final bool disabled;

  /// prefix of the menu item.
  @override
  final DropdownItemAffixModel? prefix;

  /// suffix of the menu item
  @override
  final DropdownItemAffixModel? suffix;
  @override
  @JsonKey()
  final EdgeInsetsGeometry padding;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DropdownItemModel<$T>(text: $text, value: $value, disabled: $disabled, prefix: $prefix, suffix: $suffix, padding: $padding)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DropdownItemModel<$T>'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('disabled', disabled))
      ..add(DiagnosticsProperty('prefix', prefix))
      ..add(DiagnosticsProperty('suffix', suffix))
      ..add(DiagnosticsProperty('padding', padding));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownItemModelImpl<T> &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      const DeepCollectionEquality().hash(value),
      disabled,
      prefix,
      suffix,
      padding);

  /// Create a copy of DropdownItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownItemModelImplCopyWith<T, _$DropdownItemModelImpl<T>>
      get copyWith =>
          __$$DropdownItemModelImplCopyWithImpl<T, _$DropdownItemModelImpl<T>>(
              this, _$identity);
}

abstract class _DropdownItemModel<T> implements DropdownItemModel<T> {
  const factory _DropdownItemModel(
      {required final String text,
      required final T value,
      final bool disabled,
      final DropdownItemAffixModel? prefix,
      final DropdownItemAffixModel? suffix,
      final EdgeInsetsGeometry padding}) = _$DropdownItemModelImpl<T>;

  /// Main text label.
  @override
  String get text;
  @override
  T get value;
  @override
  bool get disabled;

  /// prefix of the menu item.
  @override
  DropdownItemAffixModel? get prefix;

  /// suffix of the menu item
  @override
  DropdownItemAffixModel? get suffix;
  @override
  EdgeInsetsGeometry get padding;

  /// Create a copy of DropdownItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownItemModelImplCopyWith<T, _$DropdownItemModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DropdownItemAffixModel {
  /// An graphic asset to show.
  Widget get icon => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget icon) icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget icon)? icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget icon)? icon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropdownItemAffixModelGraphicAssetPointer value)
        icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropdownItemAffixModelGraphicAssetPointer value)? icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropdownItemAffixModelGraphicAssetPointer value)? icon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DropdownItemAffixModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownItemAffixModelCopyWith<DropdownItemAffixModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownItemAffixModelCopyWith<$Res> {
  factory $DropdownItemAffixModelCopyWith(DropdownItemAffixModel value,
          $Res Function(DropdownItemAffixModel) then) =
      _$DropdownItemAffixModelCopyWithImpl<$Res, DropdownItemAffixModel>;
  @useResult
  $Res call({Widget icon});
}

/// @nodoc
class _$DropdownItemAffixModelCopyWithImpl<$Res,
        $Val extends DropdownItemAffixModel>
    implements $DropdownItemAffixModelCopyWith<$Res> {
  _$DropdownItemAffixModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownItemAffixModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropdownItemAffixModelGraphicAssetPointerImplCopyWith<$Res>
    implements $DropdownItemAffixModelCopyWith<$Res> {
  factory _$$DropdownItemAffixModelGraphicAssetPointerImplCopyWith(
          _$DropdownItemAffixModelGraphicAssetPointerImpl value,
          $Res Function(_$DropdownItemAffixModelGraphicAssetPointerImpl) then) =
      __$$DropdownItemAffixModelGraphicAssetPointerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget icon});
}

/// @nodoc
class __$$DropdownItemAffixModelGraphicAssetPointerImplCopyWithImpl<$Res>
    extends _$DropdownItemAffixModelCopyWithImpl<$Res,
        _$DropdownItemAffixModelGraphicAssetPointerImpl>
    implements _$$DropdownItemAffixModelGraphicAssetPointerImplCopyWith<$Res> {
  __$$DropdownItemAffixModelGraphicAssetPointerImplCopyWithImpl(
      _$DropdownItemAffixModelGraphicAssetPointerImpl _value,
      $Res Function(_$DropdownItemAffixModelGraphicAssetPointerImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropdownItemAffixModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
  }) {
    return _then(_$DropdownItemAffixModelGraphicAssetPointerImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$DropdownItemAffixModelGraphicAssetPointerImpl
    with DiagnosticableTreeMixin
    implements _DropdownItemAffixModelGraphicAssetPointer {
  const _$DropdownItemAffixModelGraphicAssetPointerImpl({required this.icon});

  /// An graphic asset to show.
  @override
  final Widget icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DropdownItemAffixModel.icon(icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DropdownItemAffixModel.icon'))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownItemAffixModelGraphicAssetPointerImpl &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon);

  /// Create a copy of DropdownItemAffixModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownItemAffixModelGraphicAssetPointerImplCopyWith<
          _$DropdownItemAffixModelGraphicAssetPointerImpl>
      get copyWith =>
          __$$DropdownItemAffixModelGraphicAssetPointerImplCopyWithImpl<
                  _$DropdownItemAffixModelGraphicAssetPointerImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget icon) icon,
  }) {
    return icon(this.icon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget icon)? icon,
  }) {
    return icon?.call(this.icon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget icon)? icon,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(this.icon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropdownItemAffixModelGraphicAssetPointer value)
        icon,
  }) {
    return icon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropdownItemAffixModelGraphicAssetPointer value)? icon,
  }) {
    return icon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropdownItemAffixModelGraphicAssetPointer value)? icon,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(this);
    }
    return orElse();
  }
}

abstract class _DropdownItemAffixModelGraphicAssetPointer
    implements DropdownItemAffixModel {
  const factory _DropdownItemAffixModelGraphicAssetPointer(
          {required final Widget icon}) =
      _$DropdownItemAffixModelGraphicAssetPointerImpl;

  /// An graphic asset to show.
  @override
  Widget get icon;

  /// Create a copy of DropdownItemAffixModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownItemAffixModelGraphicAssetPointerImplCopyWith<
          _$DropdownItemAffixModelGraphicAssetPointerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
