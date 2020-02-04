import 'package:flutter/material.dart';

class InfoTab extends StatefulWidget {
  @override
  _InfoTabState createState() => _InfoTabState();
}

class _InfoTabState extends State<InfoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("InfoTab",style: TextStyle(fontSize: 12,color: Colors.black),),
      ),
    );  }
}

