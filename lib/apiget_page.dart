import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:omixtyflutterappapi/user_model.dart';
import 'package:google_fonts/google_fonts.dart';


class ApiGet extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ApiGet> {
  User user = null;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('User Data API'),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text((user != null)
                  ? user.id +
                  " | " +
                  user.name
                  :"Tidak Ada Data", style: GoogleFonts.roboto (
                textStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ],
                ),
              ),
              ),

              TextField(
                controller: myController,
              ),

              RaisedButton(onPressed: () {
                if(myController.text.isNotEmpty){
                  User.connectToAPI(myController.text).then((value){
                    user = value;
                    setState(() {});
                  });
                } else {
                  User.connectToAPI(myController.text).then((value){
                    user = value;
                    setState(() {});
                  });
                }
              },
                child: Text("BUKA DATA"),
              ),

              RaisedButton(
                child: Text('HomePage'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

            ],

          ),

        ),
      ),
    );
  }
}