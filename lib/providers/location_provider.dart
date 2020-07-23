import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Location with ChangeNotifier{
  List<String> storeBranches=[
    'Kilpauk',
    'Adyar',
    'Koyambedu',
    'Athipatti',
    'Chetpet'
  ];
  String defaultBranch='Kilpauk';
  List<Map<String,dynamic>> myProfileDropdown=[
    {
      'id':1,
      'icon':Icon(Icons.border_all),
      'title':'DashBoard',
    },
    {
      'id':2,
      'icon':Icon(Icons.dns),
      'title':'My Orders',
    },
    {
      'id':3,
      'icon':Icon(Icons.favorite_border),
      'title':'My Wishlist',
    },
    {
      'id':4,
      'icon':Icon(Icons.account_balance_wallet),
      'title':'My Wallet',
    },
    {
      'id':5,
      'icon':Icon(Icons.location_on),
      'title':'My Address',
    },
    {
      'id':6,
      'icon':Icon(Icons.card_giftcard),
      'title':'Offers',
    },
    {
      'id':7,
      'icon':Icon(Icons.info_outline,color:Colors.black,),
      'title':'Faq',
    },
    {
      'id':8,
      'icon':Icon(Icons.lock_outline,color:Colors.black,),
      'title':'Logout',
    },
  ];

  List<String> get branches  =>[...storeBranches];

  void branchSelection(String selectedBranch){
     defaultBranch=selectedBranch;
     notifyListeners();
  }

}