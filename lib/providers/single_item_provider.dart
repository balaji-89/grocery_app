import 'package:flutter/material.dart';

class IndividualItem {
  @required int productId;
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
  @required int weightCategory;
  @required
  List<int> availableWeights;
  double discountedAmount;

  IndividualItem({this.productId,
    this.productName,
    this.imageUrl,
    this.category,
    this.originalPrice,
    this.weightCategory,
    this.weight,
    this.availableWeights,
    this.discountedAmount});
}

class ShoppingItems with ChangeNotifier {
  List<String> weightUnit=['g','kg','ml','l','nos'];
  List<IndividualItem> itemsList = [
    IndividualItem(
        productId: 01,
        productName: 'Tomato',
        imageUrl: 'assets/images/individual_items/Tomato_item.png',
        weight: 500,
        originalPrice: 74,
        category: 'Vegetables',
        weightCategory: 1 ,
        discountedAmount: 40),
    IndividualItem(
      productId: 02,
      productName: 'Onion',
      imageUrl: 'assets/images/individual_items/Onion_item.jpg',
      weight: 500,
      originalPrice: 50,
      weightCategory: 1 ,
      category: 'Vegetables',
    ),
    IndividualItem(
        productId: 03,
        productName: 'Carrot',
        imageUrl: 'assets/images/individual_items/Carrot_item.jpg',
        weight: 500,
        originalPrice: 50,
        category: 'Vegetables',
        weightCategory: 1 ,
        discountedAmount: 40),
    IndividualItem(
        productId: 04,
        productName: 'Capsicum',
        imageUrl: 'assets/images/individual_items/Chilly_item.png',
        weight: 500,
        originalPrice: 30,
        category: 'Vegetables',
        weightCategory: 1 ,
        discountedAmount: 25),
    IndividualItem(
        productId: 05,
        productName: 'Apple',
        imageUrl: 'assets/images/individual_items/Apple_item.jpg',
        weight: 500,
        originalPrice: 74,
        category: 'Fruits',
        weightCategory: 1 ,
        discountedAmount: 60),
    IndividualItem(
        productId: 06,
        productName: 'Orange',
        imageUrl: 'assets/images/individual_items/Orange_item.png',
        weight: 500,
        originalPrice: 75,
        category: 'Fruits',
        weightCategory: 1 ,
        discountedAmount: 70),
    IndividualItem(
      productId: 07,
      productName: 'Strawberry',
      imageUrl: 'assets/images/individual_items/Strawberry_item.png',
      weight: 500,
      originalPrice: 75,
      category: 'Fruits',
      weightCategory: 1 ,
    ),
    IndividualItem(
      productId: 08,
      productName: 'Mango',
      imageUrl: 'assets/images/individual_items/Mango_item.jpg',
      weight: 500,
      originalPrice: 55,
      category: 'Fruits',
      weightCategory: 1 ,
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 09,
      productName: 'Apple Juice',
      imageUrl: 'assets/images/individual_items/AppleJuice_item.png',
      weight: 100,
      originalPrice: 30,
      weightCategory: 2 ,
      category: 'Beverages',

    ),

    IndividualItem(
      productId: 10,
      productName: 'Pineapple Juice',
      imageUrl: 'assets/images/individual_items/PineappleJuice_item.png',
      weight: 100,
      originalPrice: 30,
      weightCategory: 2 ,
      category: 'Beverages',

    ),
    IndividualItem(
      productId: 11,
      productName: ' Tomato Juice',
      imageUrl: 'assets/images/individual_items/TomatoJuice_item.png',
      weight: 100,
      originalPrice: 30,
      category: 'Beverages',
      weightCategory: 2 ,
      discountedAmount: 20,
    ),
    IndividualItem(
      productId: 12,
      productName: 'Packed Mango Juice',
      imageUrl: 'assets/images/individual_items/Mango_item.jpg',
      weight: 100,
      originalPrice: 50,
      weightCategory: 2 ,
      category: 'Beverages',

    ),
    IndividualItem(
      productId: 13,
      productName: 'Eggs',
      imageUrl: 'assets/images/individual_items/Egg_item.png',
      weight: 1,
      originalPrice: 5,
      weightCategory: 4,
      category: 'Groceries',

    ),
    IndividualItem(
      productId: 14,
      productName: 'Brown Eggs',
      imageUrl: 'assets/images/individual_items/BrownEggs_item.png',
      weight: 1,
      originalPrice: 9,
      weightCategory:4,
      category: 'Groceries',

    ),

    IndividualItem(
      productId: 15,
      productName: 'Basmathi Rice',
      imageUrl: 'assets/images/individual_items/BasmathiRice_item.jpg',
      weight: 500,
      originalPrice: 55,
      category: 'Fruit',
      weightCategory: 1 ,
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 16,
      productName: 'Packed Dhall',
      imageUrl: 'assets/images/individual_items/PackedDhall_item.jpg',
      weight: 50,
      originalPrice: 20,
      category: 'Groceries',
      weightCategory: 0,
      discountedAmount: 18,
    ),
    IndividualItem(
      productId: 17,
      productName: 'Ponni Rice',
      imageUrl: 'assets/images/individual_items/PonniRice_item.jpg',
      weight: 500,
      originalPrice: 500,
      category: 'Groceries',
      weightCategory: 1,
      discountedAmount: 475,
    ),
    IndividualItem(
      productId: 18,
      productName: 'Taco Shells',
      imageUrl: 'assets/images/individual_items/TacoShells_item.jpg',
      weight: 10,
      originalPrice: 55,
      category: 'Groceries',
      weightCategory:4,
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 19,
      productName: 'Beans',
      imageUrl: 'assets/images/individual_items/Beans_item.jpg',
      weight: 50,
      originalPrice: 55,
      category: 'Groceries',
      weightCategory: 0,
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 20,
      productName: 'Colgate Toothpaste',
      imageUrl: 'assets/images/individual_items/Colgate_item.jpg',
      weight: 100,
      originalPrice: 45,
      weightCategory: 0,
      category: 'Groceries',
    ),
    IndividualItem(
      productId: 21,
      productName: 'Colgate-Maxfresh ToothPaste ',
      imageUrl: 'assets/images/individual_items/ColgateMaxFresh_item.png',
      weight: 100,
      originalPrice: 50,
      weightCategory:0,
      category: 'Groceries',

    ),
    IndividualItem(
      productId: 22,
      productName: 'Colgate_Mouthwash',
      imageUrl: 'assets/images/individual_items/ColgateMouthWash_item.png',
      weight: 50,
      originalPrice: 55,
      category: 'Groceries',
      weightCategory:0,
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 23,
      productName: 'Colgate White',
      imageUrl: 'assets/images/individual_items/ColgateWhite_item.png',
      weight: 100,
      originalPrice: 70,
      category: 'Groceries',
      weightCategory:0,
    ),
    IndividualItem(
      productId: 24,
      productName: 'Taco Shells',
      imageUrl: 'assets/images/individual_items/TacoShells_item.jpg',
      weight: 50,
      originalPrice: 55,
      category: 'Groceries',
      weightCategory:4,
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 25,
      productName: 'Milk',
      imageUrl: 'assets/images/individual_items/Milk_item.png',
      weight: 500,
      originalPrice: 40,
      category: 'Dairy Products',
      weightCategory: 3 ,
      discountedAmount: 40,
    ),

    IndividualItem(
      productId: 26,
      productName: 'IceCream',
      imageUrl: 'assets/images/individual_items/IceCream_item.png',
      weight: 250,
      originalPrice: 210,
      category: 'DairyProducts',
      weightCategory: 2,
      discountedAmount: 230,
    ),
    IndividualItem(
      productId: 27,
      productName: 'Cheese',
      imageUrl: 'assets/images/individual_items/Cheese_item.png',
      weight: 50,
      originalPrice: 55,
      category: 'DiaryProducts',
      weightCategory:0,
      discountedAmount: 40,
    ),
    IndividualItem(
      productId: 28,
      productName: 'Ashirvaad',
      imageUrl: 'assets/images/individual_items/Aashirvaad_item.jpg',
      weight: 500,
      originalPrice: 150,
      category: 'Groceries',
      weightCategory:1,
      discountedAmount: 130,
    ),
  ];




  List<IndividualItem> get getDiscountedData{
    return [...itemsList.where((element) => element.discountedAmount !=null,),];
  }
}
