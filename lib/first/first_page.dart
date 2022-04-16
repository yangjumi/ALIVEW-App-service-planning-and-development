import 'package:sds_olivew/login/login_page.dart';
import 'package:sds_olivew/login/signup_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF363636),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Container(
                padding: EdgeInsets.fromLTRB(5, 70, 0, 0),
                child: Image.asset('assets/big.gif',width:330,
                  height: 330,),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE5D9BD), // background
                    onPrimary: Color(0xFF363636), // foreground
                    padding: EdgeInsets.symmetric(horizontal: 120.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp())
                    );
                    },
                  child: Text('회원가입하고 시작하기 '),
                ),
              ),

              Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 100.0),
                      primary: Color(0xFFFAF7F4), // foreground
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIN())
                    ); },
                    child: Text('이미 계정이 있으신가요? 로그인'),
                  )
              ),

            ]
        ),
      ),


    );
  }
}
