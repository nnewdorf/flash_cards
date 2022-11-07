import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flash_cards/features/flashcards/data/flash_card_model.dart';

part 'flash_card_state.freezed.dart';

// ///Extension Method for easy comparison
// extension FlashCardGetters on FlashCardState {
//   bool get isLoading => this is _FlashCardStateLoading;
// }

@freezed
abstract class FlashCardState with _$FlashCardState {
  const FlashCardState._();
    
  const factory FlashCardState({
    required String currentString,
    required String indexString,
    required bool isFlipped
    }) = _FlashCardState;
  
}