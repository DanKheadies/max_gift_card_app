import 'package:flutter/material.dart';

import 'package:max_gift_card_app/gen/fonts.gen.dart';
import 'package:max_gift_card_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: AppText.title('Gift Card'),
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        index: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SearchBar(),
            const SizedBox(height: 10),
            CategoryFilter(),
            const SizedBox(height: 10),
            CardGrid(),
          ],
        ),
      ),
    );
  }
}
