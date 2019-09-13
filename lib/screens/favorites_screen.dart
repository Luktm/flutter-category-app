import 'package:flutter/material.dart';

import '../models/meal.dart';

import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {

final List<Meal> favoritesMeals;

FavoritesScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if(favoritesMeals.isEmpty) {
      return Center(child: Text('You have no favorites yet - start adding some'),);
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          // debugPrint('${categoryMeals[index].id} <=categoryMeals');

          return MealItem(
            id: favoritesMeals[index].id,
            title: favoritesMeals[index].title,
            imageUrl: favoritesMeals[index].imageUrl,
            affordability: favoritesMeals[index].affordability,
            duration: favoritesMeals[index].duration,
            complexity: favoritesMeals[index].complexity,
          );
        },
        itemCount: favoritesMeals.length,
      );
    }
    
  }
}