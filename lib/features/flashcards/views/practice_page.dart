import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flash_cards/features/flashcards/logic/flash_card_provider.dart';

class PracticePage extends HookConsumerWidget  {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        IconButton(
          onPressed: () => ref.read(flashCardNotifierProvider.notifier).lastCard(),
          icon: const Icon(Icons.arrow_back)),
        const Expanded(
          child: FlashCard()
        ),
        IconButton(
          onPressed: () => ref.read(flashCardNotifierProvider.notifier).nextCard(),
          icon: const Icon(Icons.arrow_forward)
        ),
      ]
    );
  }
}

class FlashCard extends HookConsumerWidget {
  const FlashCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(flashCardNotifierProvider);

    return Card(
      color: state.isFlipped ? Colors.white : Colors.blue,
      child: Column(
        children: [
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Text(state.currentString, textScaleFactor: 2.0, textAlign: TextAlign.center)
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(state.indexString),
              IconButton(
                  onPressed: () => ref.read(flashCardNotifierProvider.notifier).shuffleCards(),
                  icon: const Icon(Icons.shuffle)),
              IconButton(
                  onPressed: () => ref.read(flashCardNotifierProvider.notifier).flipCard(),
                  icon: const Icon(Icons.loop))
            ],
          )
        ]
      )
    );
  }
  
}