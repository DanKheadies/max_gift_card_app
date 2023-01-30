import 'package:max_gift_card_app/models/models.dart';

extension CardCategoryExtension on CardCategory {
  String capitalName() =>
      name[0].toUpperCase() + name.substring(1, name.length).toLowerCase();
}
