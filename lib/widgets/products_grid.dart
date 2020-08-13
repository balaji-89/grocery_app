import 'package:flutter/material.dart';
import 'package:grocery_app/providers/single_item_provider.dart';

class ProductsGrid extends StatefulWidget {
  final String title;
  final List<IndividualItem> products;

  ProductsGrid({@required this.title, @required this.products});

  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: LayoutBuilder(
          builder: (_, constraints) => ListView.builder(
//            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//              mainAxisSpacing: 3,
//              crossAxisSpacing: 3,
//              childAspectRatio: 1.5,
//              maxCrossAxisExtent: 2,
//            ),
            // padding: EdgeInsets.all(7),
            itemCount: widget.products.length,
            itemBuilder: (context, index) => Container(
              height: constraints.maxHeight * 0.4,
              width: constraints.maxWidth * 0.4,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    child: Image.asset('${widget.products[index].imageUrl}',fit:BoxFit.fill,)
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
