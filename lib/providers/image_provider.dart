import 'package:flutter/material.dart';

class ProvidesImages with ChangeNotifier {
  List<Map<String, dynamic>> carouselImages = [
    {
      'imagePath': 'assets/images/Fruits.jpg',
      'offerPercentage': 6,
      'category': 'Fresh Fruits',
    },
    {
      'imagePath': 'assets/images/Vegetables.jpg',
      'offerPercentage': 3,
      'category': 'Fresh Vegetables',
    },
    {
      'imagePath': 'assets/images/Beverages.jpg',
      'offerPercentage': 5,
      'category': 'Beverages',
    },
    {
      'imagePath': 'assets/images/Egg.jpg',
      'offerPercentage': 7,
      'category': 'Daily Essentials Eggs and Dairy',
    },
    {
      'imagePath': 'assets/images/Nuts.jpg',
      'offerPercentage': 3,
      'category': 'Nuts and Snacks',
    },
  ];


  List<Map<String, String>> shopByCategory = [
    {
      'imageUrl': 'assets/images/Vegetables_category.png',
      'category': 'Vegetables',
    },
    {
      'imageUrl': 'assets/images/Milk_category.png',
      'category': 'Dairy products',
    },
    {
      'imageUrl': 'assets/images/Beverage_category.png',
      'category': 'Beverages',
    },
    {
      'imageUrl': 'assets/images/FruitsBowl_category.jpg',
      'category': 'Fruits',
    },
    {
      'imageUrl': 'assets/images/Meat_category.png',
      'category': 'Meat',
    },
    {
      'imageUrl': 'assets/images/Egg_category.jpg',
      'category': 'Eggs',
    },


  ];


}
