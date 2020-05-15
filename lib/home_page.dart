import 'package:flutter/material.dart';
import 'package:omixtyflutterappapi/apiget_page.dart';
import 'package:omixtyflutterappapi/apipost_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: PreferredSize(child: AppBar(
          flexibleSpace: Positioned(

            bottom: 0,
            left: 10,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text("OMIXTY APP",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white, fontWeight: FontWeight.w700),),
            ),
          ),
          backgroundColor: Colors.cyan,
        ), preferredSize: Size.fromHeight(200)
        ),


        body: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment(0, 0),
                margin: EdgeInsets.all(5),
                color: Colors.cyan,
                child: Text('Main Page Tugas Pemrograman Mobile',
                ),
              ),
            ),

            Flexible(child: ListView(
              children: <Widget>[


                RaisedButton(
                  child: Text(' POST DATA API '),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ApiPost();
                    }));
                  },
                ),

                RaisedButton(
                  child: Text(' GET DATA API '),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ApiGet();
                    }));
                  },
                ),

              ],
            )),

            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment(0, 0),
                margin: EdgeInsets.all(5),
                color: Colors.cyan,
                child: Text('==================================',
                ),
              ),
            ),




          ],
        ),

      ),
    );
  }
}
