import 'package:flutter/material.dart';
import 'package:food/common/ingredientModel.dart';
import 'package:food/screen/home.dart';

class ByIngredient extends StatefulWidget {
  @override
  _ByIngredientState createState() => _ByIngredientState();
}

class _ByIngredientState extends State<ByIngredient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF212128),
            Color(0xFF2f2e28),
            Color(0xFF47412b),
            Color(0xFFefb321),
          ],
          stops: [0.5, 0.6, 0.7, 0.9],
        ),
      ),
      child: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: ingredientModels.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFefb321),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 10, bottom: 20),
                                  child: Text(
                                    ingredientModels[index].type,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 140,
                      width: 140,
                      child: Image.asset(
                        "${ingredientModels[index].imagePath}",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
