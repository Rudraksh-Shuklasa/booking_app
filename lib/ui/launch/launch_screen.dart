import 'package:booking_app/utils/constants/color_constansts.dart';
import 'package:booking_app/utils/constants/route_constansts.dart';
import 'package:booking_app/utils/navigation_utils.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0, 0.5, 1],
            colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColorDark
            ],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "open Image",
              child: Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 350,
                  width: 350,
                ),
              )
            ),

            Container(
                margin: EdgeInsets.only(right: 108,left: 108),
                child:  Material(
                  elevation: 8,
                  color: Colors.transparent,
                  child:RaisedButton(
                  color: buttonColor,
                  onPressed: ()=>{
                    NavigationUtils.push(context, ROUTE_HOME)
                  },
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: Text("Stay with us",style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),

                  ),
                ),
              ),
            )



          ],
        ),
      ),

    );
  }
}
