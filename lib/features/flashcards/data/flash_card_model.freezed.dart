// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flash_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlashCardModel _$FlashCardModelFromJson(Map<String, dynamic> json) {
  return _FlashCard.fromJson(json);
}

/// @nodoc
mixin _$FlashCardModel {
  String get front => throw _privateConstructorUsedError;
  String get back => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardModelCopyWith<FlashCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardModelCopyWith<$Res> {
  factory $FlashCardModelCopyWith(
          FlashCardModel value, $Res Function(FlashCardModel) then) =
      _$FlashCardModelCopyWithImpl<$Res, FlashCardModel>;
  @useResult
  $Res call({String front, String back});
}

/// @nodoc
class _$FlashCardModelCopyWithImpl<$Res, $Val extends FlashCardModel>
    implements $FlashCardModelCopyWith<$Res> {
  _$FlashCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
  }) {
    return _then(_value.copyWith(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlashCardCopyWith<$Res>
    implements $FlashCardModelCopyWith<$Res> {
  factory _$$_FlashCardCopyWith(
          _$_FlashCard value, $Res Function(_$_FlashCard) then) =
      __$$_FlashCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String front, String back});
}

/// @nodoc
class __$$_FlashCardCopyWithImpl<$Res>
    extends _$FlashCardModelCopyWithImpl<$Res, _$_FlashCard>
    implements _$$_FlashCardCopyWith<$Res> {
  __$$_FlashCardCopyWithImpl(
      _$_FlashCard _value, $Res Function(_$_FlashCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
  }) {
    return _then(_$_FlashCard(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlashCard with DiagnosticableTreeMixin implements _FlashCard {
  const _$_FlashCard({required this.front, required this.back});

  factory _$_FlashCard.fromJson(Map<String, dynamic> json) =>
      _$$_FlashCardFromJson(json);

  @override
  final String front;
  @override
  final String back;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlashCardModel(front: $front, back: $back)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlashCardModel'))
      ..add(DiagnosticsProperty('front', front))
      ..add(DiagnosticsProperty('back', back));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlashCard &&
            (identical(other.front, front) || other.front == front) &&
            (identical(other.back, back) || other.back == back));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, front, back);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlashCardCopyWith<_$_FlashCard> get copyWith =>
      __$$_FlashCardCopyWithImpl<_$_FlashCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlashCardToJson(
      this,
    );
  }
}

abstract class _FlashCard implements FlashCardModel {
  const factory _FlashCard(
      {required final String front, required final String back}) = _$_FlashCard;

  factory _FlashCard.fromJson(Map<String, dynamic> json) =
      _$_FlashCard.fromJson;

  @override
  String get front;
  @override
  String get back;
  @override
  @JsonKey(ignore: true)
  _$$_FlashCardCopyWith<_$_FlashCard> get copyWith =>
      throw _privateConstructorUsedError;
}
