import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isVegan;
  final Complexity complexity;

  final Affordability affordability;

  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;

  const Meal(
      {@required this.id,
      @required this.title,
      @required this.categories,
      @required this.affordability,
      @required this.complexity,
      @required this.duration,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.isGlutenFree,
      @required this.isLactoseFree,
      @required this.isVegetarian,
      @required this.steps,
      @required this.isVegan,
      });
}
