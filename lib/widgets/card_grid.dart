import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:max_gift_card_app/models/models.dart';
import 'package:max_gift_card_app/providers/filtered_cards_provider.dart';
import 'package:max_gift_card_app/widgets/widgets.dart';

class CardGrid extends ConsumerWidget {
  const CardGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final cards = ref.watch(filteredCardsProvider);

    return cards.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (cards) => SizedBox(
        height: size.height * 0.65,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 10,
          ),
          itemCount: cards.length,
          itemBuilder: ((context, index) {
            return Center(
              child: CustomGiftCard(
                card: cards[index],
                width: size.width * 0.420,
              ),
            );
          }),
        ),
      ),
      error: (error, stackTrace) => Center(
        child: AppText.medium(
          'Failed to fetch card',
        ),
      ),
    );
  }
}
