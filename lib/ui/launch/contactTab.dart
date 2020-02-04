import 'package:flutter/material.dart';

class ContactTab extends StatefulWidget {
  @override
  _ContactTabState createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("ContactTab",style: TextStyle(fontSize: 12,color: Colors.black),),
      ),
    );  }
}
