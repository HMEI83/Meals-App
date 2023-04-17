import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/category_grid_item.dart';

import '../data/dummy_data.dart';
import './meals.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectedCategory(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) => MealsScreen(
                  title: 'Some title',
                  meals: [],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pick your category'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            for (final category in availableCategories)
              CategotyGridItem(
                category: category,
                onSelectCategory: () {
                  _selectedCategory(context);
                },
              )
          ],
        ));
  }
}
