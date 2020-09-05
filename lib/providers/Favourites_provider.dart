import'package:flutter/material.dart';




class Favourites {
    int id;
    String imagePath;
    String productName;
    int quantity;
    double price;

    Favourites({this.id,
        this.imagePath,
        this.productName,
        this.quantity,
        this.price
    });

}
class FavouritesList with ChangeNotifier{

    List<Favourites> favouritesList=[

    ];
    void addFavouriteItem(int receivedId,String image,String productName,int receivedQuantity,double receivedPrice){
        favouritesList.add(Favourites(productName: productName,quantity: receivedQuantity,price: receivedPrice,id: receivedId,imagePath: image));
        ChangeNotifier();

    }

    void removeFavouriteItem(int id){
        favouritesList.removeWhere((element) => element.id==id);
        ChangeNotifier();
    }

}