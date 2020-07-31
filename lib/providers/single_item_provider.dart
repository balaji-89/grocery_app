import 'package:flutter/material.dart';

class IndividualItem {
  @required
  int productId;
  @required
  String productName;
  @required
  String imageUrl;
  @required
  String category;
  @required
  double originalPrice;
  @required
  int weight;
  @required
  List<int> availableWeights;
  double discountedAmount;

  IndividualItem(
      {this.productId,
      this.productName,
      this.imageUrl,
      this.category,
      this.originalPrice,
      this.weight,
      this.availableWeights,
      this.discountedAmount});
}

class ShoppingItems with ChangeNotifier {
  List<IndividualItem> itemsList = [
    IndividualItem(
        productId: 01,
        productName: 'Tomato',
        imageUrl: 'assets/images/individual_items/Tomato_item.png',
        weight: 500,
        originalPrice: 40,
        category: 'Vegetables',
        discountedAmount: 74),
    IndividualItem(
        productId: 02,
        productName: 'Onion',
        imageUrl: 'assets/images/individual_items/Onion_item.jpg',
        weight: 500,
        originalPrice: 50,
        category: 'Vegetables',
        ),
    IndividualItem(
        productId: 03,
        productName: 'Carrot',
        imageUrl: 'assets/images/individual_items/Carrot_item.jpg',
        weight: 500,
        originalPrice: 30,
        category: 'Vegetables',
        discountedAmount: 50),
    IndividualItem(
        productId: 04,
        productName: 'Capsicum',
        imageUrl: 'assets/images/individual_items/Chilly_item.png',
        weight: 500,
        originalPrice: 20,
        category: 'Vegetables',
        discountedAmount: 74),
    IndividualItem(
        productId: 05,
        productName: 'Apple',
        imageUrl: 'assets/images/individual_items/Apple_item.jpg',
        weight: 500,
        originalPrice: 60,
        category: 'Fruits',
        discountedAmount: 74),
    IndividualItem(
        productId: 06,
        productName: 'Orange',
        imageUrl: 'assets/images/individual_items/Orange_item.png',
        weight: 500,
        originalPrice: 35,
        category: 'Fruits',
        discountedAmount: 74),
    IndividualItem(
        productId: 07,
        productName: 'Strawberry',
        imageUrl: 'assets/images/individual_items/Strawberry_item.png',
        weight: 500,
        originalPrice: 75,
        category: 'Fruits',
        ),
    IndividualItem(
        productId: 08,
        productName: 'Mango',
        imageUrl: 'assets/images/individual_items/Mango_item.jpg',
        weight: 500,
        originalPrice: 55,
        category: 'Fruits',
        discountedAmount: 40,
    ),
    IndividualItem(
      productId: 09,
      productName: 'Apple Juice',
      imageUrl: 'assets/images/individual_items/AppleJuice_item.png',
      weight: 100,
      originalPrice:30,
      category: 'Beverages',

    ),
    IndividualItem(
      productId: 10,
      productName: 'Mango Juice',
      imageUrl: 'assets/images/individual_items/MangiJuice_item.png',
      weight: 100,
      originalPrice:20,
      category: 'Beverages',
      discountedAmount: 15,
    ),
    IndividualItem(
      productId: 11,
      productName: 'Pineapple Juice',
      imageUrl: 'assets/images/individual_items/PineappleJuice_item.png',
      weight: 100,
      originalPrice: 30,
      category: 'Beverages',

    ),
    IndividualItem(
      productId: 12,
      productName: ' Tomato Juice',
      imageUrl: 'assets/images/individual_items/TomatoJuice_item.png',
      weight: 100,
      originalPrice: 30,
      category: 'Beverages',
      discountedAmount: 20,
    ),
    IndividualItem(
      productId: 13,
      productName: 'Packed Mango Juice',
      imageUrl: 'assets/images/individual_items/Mango_item.png',
      weight: 100,
      originalPrice: 50,
      category: 'Beverages',

    ),
    IndividualItem(
      productId: 14,
      productName: 'Eggs',
      imageUrl: 'assets/images/individual_items/Mango_item.png',
      weight: 1,
      originalPrice: 5,
      category: 'Groceries',

    ),
    IndividualItem(
      productId: 15,
      productName: 'Brown Eggs',
      imageUrl: 'assets/images/individual_items/BrownEggs_item.png',
      weight: 1,
      originalPrice: 9,
      category: 'Groceries',

    ),

    IndividualItem(
      productId: 16,
      productName: 'Basmathi Rice',
      imageUrl: 'assets/images/individual_items/BasmathiRice_item.jpg',
      weight: 500,
      originalPrice: 55,
      category: 'Fruit',
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 17,
      productName: 'Packed Dhall',
      imageUrl: 'assets/images/individual_items/PackedDhall_item.jpg',
      weight: 50,
      originalPrice: 20,
      category: 'Groceries',
      discountedAmount: 18,
    ),
    IndividualItem(
      productId: 18,
      productName: 'Ponni Rice',
      imageUrl: 'assets/images/individual_items/PonniRice_item.jpg',
      weight: 500,
      originalPrice: 500,
      category: 'Groceries',
      discountedAmount: 475,
    ),
    IndividualItem(
      productId:19,
      productName: 'Taco Shells',
      imageUrl: 'assets/images/TacoShells_item.jpg',
      weight: 50,
      originalPrice: 55,
      category: 'Groceries',
      discountedAmount: 40,
    ),
    IndividualItem(
      productId:20,
      productName: 'Beans',
      imageUrl: 'assets/images/Beans.jpg',
      weight: 50,
      originalPrice: 55,
      category: 'Groceries',
      discountedAmount: 40,
    ),
    IndividualItem(
      productId:21,
      productName: 'Colgate Toothpaste',
      imageUrl: 'assets/images/Colgate_item.jpg',
      weight: 100,
      originalPrice: 45,
      category: 'Groceries',
    ),
    IndividualItem(
      productId:22,
      productName: 'Colgate-Maxfresh ToothPaste ',
      imageUrl: 'assets/images/ColgateMaxFresh_item.png',
      weight: 100,
      originalPrice: 50,
      category: 'Groceries',

    ),
    IndividualItem(
      productId:23,
      productName: 'COlogate_Mouthwash',
      imageUrl: 'assets/images/CologateMouthWash_item.png',
      weight: 50,
      originalPrice: 55,
      category: 'Groceries',
      discountedAmount: 40,
    ),
    IndividualItem(
      productId:24,
      productName: 'Colgate White',
      imageUrl: 'assets/images/ColgateWhite_item.png',
      weight: 100,
      originalPrice: 70,
      category: 'Groceries',
    ),
    IndividualItem(
      productId:25,
      productName: 'Taco Shells',
      imageUrl: 'assets/images/TacoShells_item.jpg',
      weight: 50,
      originalPrice: 55,
      category: 'Groceries',
      discountedAmount: 40,
    ),
    IndividualItem(
      productId:26,
      productName: 'Milk',
      imageUrl: 'assets/images/Milk_item.png',
      weight: 500,
      originalPrice: 40,
      category: 'Dairy Products',
      discountedAmount: 40,
    ),

    IndividualItem(
      productId:28,
      productName: 'IceCream',
      imageUrl: 'assets/images/IceCream_item.png',
      weight: 250,
      originalPrice: 210,
      category: 'DairyProducts',
      discountedAmount: 230,
    ),
    IndividualItem(
      productId:29,
      productName: 'Cheese',
      imageUrl: 'assets/images/Cheese_item.png',
      weight: 50,
      originalPrice: 55,
      category: 'DiaryProducts',
      discountedAmount: 40,
    ),


























  ];
}
