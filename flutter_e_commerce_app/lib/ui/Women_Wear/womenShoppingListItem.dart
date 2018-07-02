import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/model/product.dart';
import 'package:flutter_e_commerce_app/ui/Women_Wear/womenDetailPage.dart';

class WomenShoppingListItem extends StatelessWidget {

  final Product product;
  const WomenShoppingListItem({@required this.product});
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black,
              width: 1.0
          ),

        
      ),
      margin: const EdgeInsets.all(4.0),
      child: Container(
        child: WomenListItemStack(product),
      ),
    );
  }
}

class WomenListItemStack extends StatelessWidget {
  final Product product;

  WomenListItemStack(this.product);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 8.0,
        child: InkWell(
          onTap: () =>
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => WomenDetailPage(product))),
          child: new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              WomenListItemImage(product),
              WomenListItemRating(product),
              WomenListItemName(product)
            ],
          ),
        ));
  }
}

class WomenListItemRating extends StatelessWidget {
  final Product product;

  WomenListItemRating(this.product);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.yellow,
                size: 18.0,
              ),
              new SizedBox(
                width: 5.0,
              ),
              new Text(
                product.rating.toString(),
                maxLines: 1,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WomenListItemImage extends StatelessWidget {
  final Product product;

  WomenListItemImage(this.product);

  @override
  Widget build(BuildContext context) {
    return new Image.network(
      product.imageUrl,
      fit: BoxFit.cover,
    );
  }
}

class WomenListItemName extends StatelessWidget {
  final Product product;

  WomenListItemName(this.product);

  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: Alignment.bottomCenter,
      child: new Container(
        color: Colors.black.withOpacity(0.5),
        constraints: BoxConstraints.expand(
          height: 40.0,
        ),

       
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: new Text(
              product.name,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}