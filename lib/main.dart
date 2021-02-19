import 'package:flutter/material.dart';
import 'package:flutter_lesson_signup/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {

  Color myblack = Color(0xFF222222);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        leading: Icon(Icons.chevron_left, color: myblack,),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text('Sign up',
                  style: TextStyle(color: myblack, fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                color: Colors.white,
                padding: EdgeInsets.only(left: 16, right: 16),
                alignment: Alignment.center,
                child:  TextFormField(
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Color(0xFF9B9B9B),
                    ),
                    suffixIcon: Icon(
                      Icons.check, color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                color: Colors.white,
                padding: EdgeInsets.only(left: 16, right: 16),
                alignment: Alignment.center,
                child:  TextFormField(
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Color(0xFF9B9B9B),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                color: Colors.white,
                padding: EdgeInsets.only(left: 16, right: 16),
                alignment: Alignment.center,
                child:  TextFormField(
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color(0xFF9B9B9B),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text('Already have an account?', style: TextStyle(
                        color: myblack
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.only( right: 16),
                    child: Icon(Icons.arrow_right_alt, color: Colors.red),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));},
                    color: Colors.red,
                    textColor: Color(0xFFF9F9F9),
                    child: Text('SIGN UP'),
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: <Widget>[
              Text('Or sign up with social account',
                style: TextStyle(color: myblack),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 92,
                    height: 64,
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      child: Image.asset('assets/images/logogoogle.png'),
                      padding: EdgeInsets.all(20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    width: 92,
                    height: 64,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      child: Image.asset('assets/images/facebook.png'),
                      padding: EdgeInsets.all(18),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,)
            ],
          )

        ],
      ),
    );
  }
}
