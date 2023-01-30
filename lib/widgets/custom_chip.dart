import 'package:flutter/material.dart';

import 'package:max_gift_card_app/gen/colors.gen.dart';
import 'package:max_gift_card_app/widgets/widgets.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function()? onTap;

  const CustomChip({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: isSelected ? ColorName.primaryColor : ColorName.disabledGrey,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: AppText.small(
            label,
            color: isSelected ? Colors.white : ColorName.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
