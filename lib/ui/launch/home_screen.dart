import 'package:booking_app/ui/launch/contactTab.dart';
import 'package:booking_app/ui/launch/photoTab.dart';
import 'package:booking_app/utils/indicator/slide_effect.dart';
import 'package:booking_app/utils/indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

import 'InfoTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  PageController controller = PageController();
  var _screensTab=[ContactTab(),InfoTab(),PhotoTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Hero(
           tag: "open Image",
           child:
           Stack(
             children: <Widget>[


               Container(
                 padding: EdgeInsets.only(top: 64),
                 height: MediaQuery.of(context).size.height/1.5,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("assets/images/first_hotel.jpg"),
                     fit: BoxFit.cover,
                   ),
                 ),
                 child: Stack(
                   children: <Widget>[
                     Align(
                         alignment: Alignment.topCenter,
                         child:  Text("Zoom",style: TextStyle(color: Colors.white,fontSize: 48,fontWeight: FontWeight.bold),)
                     ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child:Container(
                        margin: EdgeInsets.only(left: 18,right:18,bottom: 108),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/back.png",
                            ),
                            Image.asset(
                              "assets/images/next.png",

                            ),

                          ],
                        ),
                      ) ,
                    )

                   ],
                 )

               ),

               Align(
                 alignment: Alignment.bottomCenter,
                 child: Container(
                   height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/1.5,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     // Box decoration takes a gradient
                     gradient: LinearGradient(
                       begin: Alignment.topRight,
                       end: Alignment.bottomLeft,
                       stops: [0, 0.5, 1],
                       colors: [
                         Theme.of(context).primaryColorLight,
                         Theme.of(context).primaryColor,
                         Theme.of(context).primaryColorDark
                       ],
                     ),
                   ),

                   child: Stack(
                     children: <Widget>[

                       Container(),

                       SmoothPageIndicator(
                         controller: controller,
                         count: _screensTab.length,
                         effect: SlideEffect(
                             spacing: 8.0,
                             radius: 4.0,
                             dotWidth: 30.0,
                             dotHeight: 6.0,
                             paintStyle: PaintingStyle.fill,
                             strokeWidth: 0,
                             dotColor: Colors.white,
                             activeDotColor: Colors.black),
                       ),
                       PageView.builder(
                         controller: controller,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, position) {
                           return _screensTab[position];
                         },
                         itemCount: _screensTab.length,
                       ),
                     ],
                   )

                 )
               ),
               Align(
                   alignment: Alignment.bottomCenter,
                   child: Wrap(
                       children:<Widget>[ Container(

                         margin: EdgeInsets.only(left: 18,bottom:  MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/1.5-24, ),
                         width: MediaQuery.of(context).size.width,
                         child: Text("ABCD",style: TextStyle(color: Colors.white,fontSize: 48,fontWeight: FontWeight.bold),),

                       ),
                       ]
                   )
               ),

        ]

           )
          ),

      );
  }
}
