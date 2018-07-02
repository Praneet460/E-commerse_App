import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/ui/Men_Wear/mensWear.dart';
import 'package:flutter_e_commerce_app/ui/Women_Wear/womenWear.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
        backgroundColor: Colors.black,
        elevation: 4.0,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                  child: Material(
                    color: Colors.lightBlue,
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => MenWear())),
                      child: Container(
                        child: Image(
                            image:
                            AssetImage("assets/images/banner/men_wear.jpg"),
                            fit: BoxFit.fill,),

                      ),
                    )
                  )),
              Expanded(
                  child: Material(
                    color: Colors.red,
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => WomenWear())),
                      child: Container(
                        child: Image(
                            image: AssetImage("assets/images/banner/women.png"),
                            fit: BoxFit.cover
                        ),
                      ),
                    )
                  )),
            ],
          ),
        ],
      )
    );
  }
}
