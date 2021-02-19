import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  Color myblack = Color(0xFF222222);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visual search', style: TextStyle(color: myblack),),
        backgroundColor: Color(0xFFF9F9F9),
        leading: Icon(Icons.chevron_left, color: myblack,),
      elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/back.png"),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    colors: [
                      Colors.black54,
                      Colors.black54
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text('Search for an outfit by\ntaking a photo or uploading\nan image',
                style: TextStyle(
                  color: Colors.white, fontSize: 24
                ),),
              ),
              SizedBox(height: 28,),
              Container(
                margin: EdgeInsets.only(left: 16,right: 16),
                width: double.infinity,
                child: RaisedButton(
                  onPressed: (){},
                  color: Color(0xFFDB3022),
                  child: Text('TAKE A PHOTO', style: TextStyle(color: Colors.white, fontSize: 14),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(14),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                margin: EdgeInsets.only(left: 16,right: 16),
                width: double.infinity,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.transparent,
                  child: Text('UPLOAD AN IMAGE', style: TextStyle(color: Colors.white, fontSize: 14),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.white, width: 1.5)),
                  padding: EdgeInsets.all(14),
                ),
              ),
            ],
          )
        ],
    ),
    );
  }
}
