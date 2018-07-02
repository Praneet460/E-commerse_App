import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/model/product.dart';


class MenDetailPage extends StatelessWidget {
  final Product product;
  MenDetailPage(this.product);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart,
              color: Colors.white,),
              onPressed: (){})
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Material(
                  child: Container(
                    color: Colors.black,
                    child: Center(
                       child: Image(
                           image: NetworkImage(product.imageUrl),
                       fit: BoxFit.fill,)
                    ),

                  ),
                ),
              ),


            ],
          ),
        ],
      ),


    );
  }
}

