import 'package:flutter/material.dart';
import 'package:watch_it/UI/movieTiles.dart';
import 'package:watch_it/UI/constants.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        title: Text("WATCHit", style: TextStyle(color: Color(0xFFFFE4B5),),
      ),),
      body: movieTiles(),
    ),
  ));
}

