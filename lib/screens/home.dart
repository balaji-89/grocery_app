import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).backgroundColor,
        child: ListView(
          children: <Widget>[
            CarouselSlider(height:MediaQuery.of(context).size.height*3.5,initialPage:0,autoPlay: true, enlargeCenterPage: true,items: null),



          ],
        ),
      ),
    );
  }
}
