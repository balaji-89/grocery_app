import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/home.dart';
import 'package:provider/provider.dart';
import './providers/location_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'providers/image_provider.dart';
//bestValues //featured products //fresh arrivals

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => Location()
      ),

    ], child: GroceryApp()));

class GroceryApp extends StatefulWidget {
  @override
  _GroceryAppState createState() => _GroceryAppState();
}

class _GroceryAppState extends State<GroceryApp> {
  String shopName = 'Balaji\'s market';

  @override
  Widget build(BuildContext context) {
    List<String> branches =
        Provider.of<Location>(context, listen: false).branches;
    String defaultBranch =
        Provider.of<Location>(context, listen: true).defaultBranch;

    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.exo2TextTheme(Theme.of(context).textTheme),
          primaryColor: Colors.deepOrange,
          backgroundColor: Colors.white),
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            padding: EdgeInsets.all(5),
            height: 50,
            width: 35,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500],
                    offset: Offset(3, 3),
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
                color: Colors.deepOrange,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Center(
              child: Text('${shopName[0]}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.black,
                size: 17,
              ),
              Container(
                child: Consumer<Location>(
                  builder: (context, location, child) =>
                      DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: defaultBranch,
                      items: branches.map(
                        (branch) {
                          return DropdownMenuItem<String>(
                            value: branch,
                            child: Text(
                              '$branch',
                              style: TextStyle(fontSize: 15),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (branch) => Provider.of<Location>(context)
                          .branchSelection(branch),
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(3, 3),
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
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.redAccent.withOpacity(0.4),
                      child: Center(
                          child: Icon(
                        Icons.favorite_border,
                        color: Colors.redAccent,
                      )),
                    ),
                  ),
                  Positioned(
                    right: 2,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.redAccent,
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            PopupMenuButton(
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4, 4),
                      blurRadius: 4.0,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 5.0,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.deepOrange,
                  child: Image.asset('assets/images/profile_cartoon.png'),
                ),
              ),
              itemBuilder: (ctx) {
                return Provider.of<Location>(context)
                    .myProfileDropdown
                    .map(
                      (item) => PopupMenuItem<String>(
                        value: item['title'].toString(),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: item['icon'],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                item['title'],
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList();
              },
              onSelected: (value) {
                switch (value) {
                  case 'DashBoard':
                    {}
                    break;
                  case 'My Orders':
                    {}
                    break;
                  case 'My Wishlist':
                    {}
                    break;
                  case 'My Wallet':
                    {}
                    break;
                  case 'My Address':
                    {}
                    break;
                  case 'Offers':
                    {}
                    break;
                  case 'Faq':
                    {}
                    break;
                  case 'Logout':
                    {}
                    break;
                }
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Column(
              children: <Widget>[

              Container(height:1,color:Colors.grey.withOpacity(0.5)),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: IconButton(
                            onPressed: null,
                        icon: Icon(
                          Icons.widgets,
                          color: Colors.black54,
                        ),
                      )),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                gradient:LinearGradient(begin:Alignment.topLeft,end:Alignment.bottomRight,colors: [
                                  Colors.deepOrange[300],
                                  Colors.deepOrange[300],
                                  Colors.deepOrange[600],
                                  Colors.deepOrange[900],
                                ]),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),
                                  )
                              ),

                              width:70,
                              height: 80,
                              child: Icon(
                                Icons.shopping_cart,
                                size: 23,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              decoration:BoxDecoration(
                                gradient:LinearGradient(begin:Alignment.topLeft,end:Alignment.bottomRight,colors: [
                                  Colors.red[300],
                                  Colors.red[300],
                                  Colors.red[600],
                                  Colors.red[900],
                                ]),
                                color: Colors.redAccent,
                              ),

                              width:70,
                              height: 80,
                              child: Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ChangeNotifierProvider(create: (context)=>ProvidesImages(),child: HomeScreen()),

      ),
    );
  }
}
