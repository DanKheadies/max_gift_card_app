import 'package:flutter/material.dart';

import 'package:max_gift_card_app/gen/assets.gen.dart';
import 'package:max_gift_card_app/gen/colors.gen.dart';

enum CardCategory {
  birthday,
  christmas,
  general,
  congratulations,
}

class CardModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color bgColor;
  final List<CardCategory> categories;

  CardModel({
    required this.id,
    required this.name,
    required this.thumbnailPath,
    required this.bgColor,
    required this.categories,
  });

  static List<CardModel> sampleCards = [
    CardModel(
      id: 1,
      name: 'Christmas Doge',
      thumbnailPath: Assets.cards.blue.path,
      categories: [
        CardCategory.christmas,
        CardCategory.general,
      ],
      bgColor: ColorName.bgBlue,
    ),
    CardModel(
      id: 2,
      name: 'Flowers Bouquet',
      thumbnailPath: Assets.cards.cyan.path,
      categories: [
        CardCategory.christmas,
        CardCategory.congratulations,
        CardCategory.general,
      ],
      bgColor: ColorName.bgBlue,
    ),
    CardModel(
      id: 3,
      name: 'Ho Ho Ho',
      thumbnailPath: Assets.cards.green.path,
      categories: [
        CardCategory.christmas,
        CardCategory.general,
      ],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 4,
      name: 'Choco Cake',
      thumbnailPath: Assets.cards.orange.path,
      categories: [
        CardCategory.birthday,
        CardCategory.general,
      ],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 5,
      name: 'Happy Birthday',
      thumbnailPath: Assets.cards.pink.path,
      categories: [
        CardCategory.birthday,
        CardCategory.general,
      ],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 6,
      name: 'Giving Season',
      thumbnailPath: Assets.cards.purple.path,
      categories: [
        CardCategory.christmas,
        CardCategory.general,
      ],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 7,
      name: 'Birthday Gift',
      thumbnailPath: Assets.cards.red.path,
      categories: [
        CardCategory.birthday,
        CardCategory.general,
      ],
      bgColor: ColorName.bgBlue,
    ),
    CardModel(
      id: 8,
      name: 'Holly Jolly Socks',
      thumbnailPath: Assets.cards.yellow.path,
      categories: [
        CardCategory.christmas,
        CardCategory.general,
      ],
      bgColor: ColorName.bgBlue,
    ),
  ];
}
