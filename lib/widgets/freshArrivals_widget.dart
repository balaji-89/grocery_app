import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import'package:grocery_app/providers/single_item_provider.dart';


class FreshArrivals extends StatelessWidget {
  final List freshArrivals;

  FreshArrivals({this.freshArrivals});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top:15,),
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                          EdgeInsets.only(left: 10, top: 17, bottom: 2),
                          child: Text(
                            'You may also like',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            'Fresh Arrivals',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 20, right: 13),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.deepOrange[400],
                              Colors.deepOrange[400],
                              Colors.deepOrange[600],
                              Colors.deepOrange[900],
                            ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(4, 4),
                            blurRadius: 4.0,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 4.0,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: InkWell(
                        child: Text(
                          'View all >>',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                  height: constraints.maxHeight * 0.7,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => Container(
                      width: constraints.maxWidth * 0.5,
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(4, 4),
                            blurRadius: 4.0,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 4.0,
                            spreadRadius: 1,
                          ),
                        ],
                        color: Colors.white,
                        border: Border.all(
                          color:
                          Theme.of(context).primaryColor.withOpacity(0.7),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: -50,
                            top: -100,
                            right: 2,
                            child: Container(
                              height: constraints.maxHeight * 0.61,
                              width: constraints.maxWidth * 0.75,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.75),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          // Positioned(right:-28,top:100,child: Container(height: constraints.maxHeight*0.1,width: constraints.maxWidth*0.13,decoration: BoxDecoration(shape:BoxShape.circle,color: Theme.of(context).primaryColor),)),
                          Positioned(
                              bottom: -50,
                              left: -80,
                              child: Container(
                                height: constraints.maxHeight * 0.3,
                                width: constraints.maxWidth * 0.45,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.75),
                                  shape: BoxShape.circle,
                                ),
                              )),
                          Positioned(
                            top: 25,
                            left: 10,
                            child: Container(
                              height: constraints.maxHeight * 0.38,
                              width: constraints.maxWidth * 0.43,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius:BorderRadius.all(
                                Radius.circular(5),
                                 ),
                                child: Image.asset(freshArrivals[index].imageUrl,
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              left: 30,
                              child: Container(
                                alignment: Alignment.topRight,
                                width: constraints.maxWidth,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    FittedBox(
                                        child: Container(
                                          width:130,
                                          child: Text(
                                            '${freshArrivals[index].productName}',
                                            style: TextStyle(
                                              color: Colors.black54
                                              ,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )),
                                    Consumer<ShoppingItems>(builder:(_,providerPath,child)=> FittedBox(child: Text( '${freshArrivals[index].weight} ${providerPath.weightUnit[freshArrivals[index].weightCategory]}',style: TextStyle(color: Colors.black,fontSize: 10,),))),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                            'Rs ${freshArrivals[index].discountedAmount}  ',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            )),
                                        Text(
                                            '${freshArrivals[index].originalPrice}',
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration.lineThrough,
                                                fontSize: 10,
                                                color: Colors.grey)),
                                        Container(
                                            margin:EdgeInsets.only(left: 20),
                                            child:Icon(Icons.favorite_border,size:20,color: Theme.of(context).accentColor,)
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ))
            ],
          );
        },
      ),
    );
  }
}
