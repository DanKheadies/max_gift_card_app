import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:max_gift_card_app/models/models.dart';
import 'package:max_gift_card_app/providers/providers.dart';
import 'package:max_gift_card_app/repositories/repositories.dart';

part 'filtered_cards_provider.g.dart';

@riverpod
Future<List<CardModel>> filteredCards(FilteredCardsRef ref) async {
  final CardRepository cardRepository = ref.watch(cardRepositoryProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  final searchQuery = ref.watch(searchQueryProvider);

  var allCards = await cardRepository.getAllCards();

  if (selectedCategory != null) {
    return allCards.where((card) {
      return card.categories.any((category) => category == selectedCategory);
    }).toList();
  }

  if (searchQuery.trim().isNotEmpty) {
    return allCards.where((card) {
      return card.name.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }

  return allCards;
}
