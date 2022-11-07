import 'package:flash_cards/features/flashcards/logic/flash_card_provider.dart';
import 'package:flutter/material.dart';
import 'package:flash_cards/features/flashcards/views/practice_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen()
    );
  }
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.file_open),
          onPressed: ()=> ref.read(flashCardNotifierProvider.notifier).getFlashCardsFile()
        ),
        title: const Text('Flash Cards')
      ),
      body: const PracticePage(),
    );
  }
}