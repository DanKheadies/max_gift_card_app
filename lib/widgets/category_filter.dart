import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:max_gift_card_app/models/models.dart';
import 'package:max_gift_card_app/providers/providers.dart';
import 'package:max_gift_card_app/utils/utils.dart';
import 'package:max_gift_card_app/widgets/widgets.dart';

class CategoryFilter extends ConsumerWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);

    return SizedBox(
      height: 30,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...CardCategory.values.map(
            (category) => CustomChip(
              label: category.capitalName(),
              isSelected: selectedCategory == category,
              onTap: () {
                ref
                    .read(selectedCategoryProvider.notifier)
                    .setSelectedCategory(category);
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
