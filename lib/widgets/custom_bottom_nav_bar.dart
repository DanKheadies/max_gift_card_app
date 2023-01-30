import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:max_gift_card_app/gen/colors.gen.dart';
import 'package:max_gift_card_app/screens/screens.dart';

class CustomNavBar extends StatelessWidget {
  final int index;

  const CustomNavBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavBarIcon(
              icon: FontAwesomeIcons.house,
              isSelected: index == 0,
              onTap: index != 0
                  ? () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HomeScreen())),
                      );
                    }
                  : null,
            ),
            const _NavBarIcon(
              icon: FontAwesomeIcons.ccDiscover,
            ),
            const _NavBarIcon(
              icon: FontAwesomeIcons.gift,
            ),
            const _NavBarIcon(
              icon: FontAwesomeIcons.creditCard,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final Function()? onTap;

  const _NavBarIcon({
    // super.key,
    required this.icon,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? ColorName.primaryColor : ColorName.disabledGrey;

    return InkWell(
      onTap: onTap,
      child: Center(
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
