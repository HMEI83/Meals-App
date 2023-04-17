import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import '../models/category.dart';

class CategotyGridItem extends StatelessWidget {
  const CategotyGridItem({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          category.color.withOpacity(0.55),
          category.color.withOpacity(0.9),
        ],
        begin: Alignment.topLeft,
        end: Alignment.topRight,
      )),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
    );
  }
}
