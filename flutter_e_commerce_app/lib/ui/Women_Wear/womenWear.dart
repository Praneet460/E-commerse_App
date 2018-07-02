import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/util/Constants.dart';
import 'package:flutter_e_commerce_app/model/product.dart';
import 'package:flutter_e_commerce_app/ui/Women_Wear/womenShoppingListItem.dart';
class WomenWear extends StatefulWidget {
  @override
  _WomenWearState createState() => new _WomenWearState();
}

class _WomenWearState extends State<WomenWear> {

  List<Product> womenproductsList = Constants.womenproductsList();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Women's Wear"),
        backgroundColor: Colors.black,
        elevation: 4.0,
      ),
      body: Container(
          color: Colors.black,
          child: _gridView()),
    );

  }
  Widget _gridView() {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: womenproductsList.map(
              (product) => WomenShoppingListItem(product: product),
        ).toList(),),
    );
  }

}
