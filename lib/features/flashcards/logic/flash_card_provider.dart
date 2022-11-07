import 'dart:convert';

import 'package:flash_cards/features/flashcards/data/flash_card_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flash_cards/features/flashcards/logic/flash_card_state.dart';

final flashCardNotifierProvider = StateNotifierProvider<FlashCardNotifier, FlashCardState>(
  (ref) {
    const initialState = FlashCardState(
      currentString: 'please load cards',
      indexString: '1/1',
      isFlipped: false
    );
    return FlashCardNotifier(initialState);
  });

class FlashCardNotifier extends StateNotifier<FlashCardState> {
  FlashCardNotifier(FlashCardState state) : super(state);

  List<FlashCardModel> flashCards = [
    const FlashCardModel(front: 'please load cards', back: 'please load cards'),
  ];
  int currentCardIndex = 0;

  void flipCard() async {
    FlashCardModel currentCard = flashCards[currentCardIndex];
    bool newIsFlipped = !state.isFlipped;
    String newCurrentString = newIsFlipped ? currentCard.back : currentCard.front;
    state = state.copyWith(currentString: newCurrentString, isFlipped: newIsFlipped);
  }

  void nextCard() async {
    if (currentCardIndex < flashCards.length-1) {
      currentCardIndex++;
      buildNewFlashCardState();
    }
  }

  void lastCard() async {
    if (currentCardIndex > 0) {
      currentCardIndex--;
      buildNewFlashCardState();
    }
  }

  void shuffleCards() async {
    flashCards.shuffle();
    currentCardIndex = 0;
    buildNewFlashCardState();
  }

  void getFlashCardsFile() async {
    try {
      List<FlashCardModel> newFlashCards = [];
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null){
        String jsonString = utf8.decode(result.files.single.bytes!);
        final json = jsonDecode(jsonString);
        for(var item in json) {
          newFlashCards.add(FlashCardModel.fromJson(item));
        }
        flashCards = newFlashCards;
        currentCardIndex = 0;
        buildNewFlashCardState();
      }
    } catch(e) {
      print(e);
    }
  }

  void buildNewFlashCardState() {
    FlashCardModel currentCard = flashCards[currentCardIndex];
    String newCurrentString = currentCard.front;
    String newIndexString = '${(currentCardIndex+1).toString()}/${flashCards.length}';
    bool newIsFlipped = false;
    state = FlashCardState(
      currentString: newCurrentString,
      indexString: newIndexString,
      isFlipped: newIsFlipped
    );   
  }
}