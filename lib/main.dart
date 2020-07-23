import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/location_provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => Location(),
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
          primaryColor: Colors.deepOrange, backgroundColor: Colors.white),
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            padding: EdgeInsets.all(5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
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
            Container(
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.redAccent.withOpacity(0.4),
                      child: Center(
                          child: Icon(
                        Icons.favorite_border,
                        color: Colors.redAccent,
                      )),
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
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.deepOrange,
                    backgroundImage:
                        AssetImage('assets/images/profile_cartoon.png'),
                  ),
                  items: Provider.of<Location>(context)
                      .myProfileDropdown
                      .map(
                        (item) => DropdownMenuItem<String>(
                          value: item['title'].toString(),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: item['icon'],
                              ),
                              Container(
                                child: Text(item['title']),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
