import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:max_gift_card_app/models/models.dart';

part 'selected_category_provider.g.dart';

@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  CardCategory? build() {
    return null;
  }

  void setSelectedCategory(CardCategory? selectedCategory) async {
    if (state == selectedCategory) {
      state = null;
    } else {
      state = selectedCategory;
    }
  }
}
