import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:omixtyflutterappapi/post_model.dart';
import 'package:google_fonts/google_fonts.dart';


class ApiPost extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ApiPost> {
  PostResult postResult;
  final nameController = TextEditingController();
  final jobController = TextEditingController();

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
              Text((postResult != null)
                  ? postResult.name +
                  postResult.job
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
                controller: nameController,
              ),

              TextField(
                controller: jobController,
              ),

              RaisedButton(onPressed: () {
                PostResult.connectToAPI(
                    nameController.text,
                    jobController.text).then((value)
                {
                  postResult = value;
                  setState(() {});
                });
               },
                child: Text("KIRIM DATA"),
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