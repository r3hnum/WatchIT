import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:watch_it/UI/constants.dart';

class movieTiles extends StatefulWidget {
  const movieTiles({Key? key}) : super(key: key);

  @override
  _movieTilesState createState() => _movieTilesState();
}

class _movieTilesState extends State<movieTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
          itemBuilder: (context,index){
            return ListTile(
              isThreeLine: true,
              onTap: () {}, //Zoom Image Function
              //name
              title: Expanded(
                child: Text(
                  "Avengers : Endgame",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),

              //Phone number and Time
              subtitle: Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFD4A017),
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "8.9",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Genre : ",
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(
                          //   width: 2.0,
                          // ),
                          Text(
                            "Horror, Romance",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              //Id Image
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 50,
                  minHeight: 50,
                  maxWidth: 100,
                  maxHeight: 100,
                ),
                child: Image.network(
                    "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg",
                    fit: BoxFit.contain),
              ),
              //Room Number
              trailing: Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    //code for "Add to favorites"
                  },
                  child: Icon(
                    CupertinoIcons.heart_fill,
                    size: 28.0,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.red;
                      }
                      return Colors.grey;
                    }),
                    elevation: MaterialStateProperty.all(0.0),
                  ),
                ),
              ),
              contentPadding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 4.0),
            );
          }

      )


      );
  }
}
