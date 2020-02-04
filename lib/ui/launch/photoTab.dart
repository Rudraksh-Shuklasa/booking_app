import 'package:flutter/material.dart';

class PhotoTab extends StatefulWidget {
  @override
  _PhotoTabState createState() => _PhotoTabState();
}

class _PhotoTabState extends State<PhotoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("PhotoTab",style: TextStyle(fontSize: 12,color: Colors.black),),
      ),
    );
  }
}
