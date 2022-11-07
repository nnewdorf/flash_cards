// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'flash_card_model.freezed.dart';
part 'flash_card_model.g.dart';

@freezed
class FlashCardModel with _$FlashCardModel {
  const factory FlashCardModel({
    required String front,
    required String back,
  }) = _FlashCard;

  factory FlashCardModel.fromJson(Map<String, Object?> json)
      => _$FlashCardModelFromJson(json);
}
