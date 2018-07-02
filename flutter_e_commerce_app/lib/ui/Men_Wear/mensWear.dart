import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/model/product.dart';
import 'package:flutter_e_commerce_app/util/Constants.dart';
import 'package:flutter_e_commerce_app/ui/Men_Wear/MenShoppingListItem.dart';
import 'package:flutter_e_commerce_app/ui/Men_Wear/menDetailPage.dart';
class MenWear extends StatefulWidget {
  @override
  _MenWearState createState() => new _MenWearState();
}

class _MenWearState extends State<MenWear> {

  List<Product> productsList = Constants.productsList();
  bool isSorted = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Men's Wear"),
        backgroundColor: Colors.black,
        elevation: 4.0,
      ),
      body: Container(
          color: Colors.black,
          child: _gridView()),

    );
  }
  Widget _gridView(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: productsList.map(
              (product) => MenShoppingListItem(product: product),

        ).toList(),),
    );
  }
}


