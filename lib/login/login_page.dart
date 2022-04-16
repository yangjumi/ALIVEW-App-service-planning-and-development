import 'package:sds_olivew/login/signup_page.dart';
import 'package:sds_olivew/tab_page.dart';
import 'package:flutter/material.dart';

class LogIN extends StatefulWidget {
  @override
  _LogINState createState() => _LogINState();
}

class _LogINState extends State<LogIN> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인'),
      ),

      body: SingleChildScrollView(

        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'eg) johndoe@xxx.com',
                    border: OutlineInputBorder(),
                  ),
                ),
                // Container(height: 10,),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'eg) very hard key',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),

                SizedBox(height: 20,),

                Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 100.0),
                        primary: Color(0xFF363636), // foreground
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp())
                        );
                      },
                      child: Text("Don't have an account yet?"),
                    )
                ),

                Center(child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF83393C), // background
                    onPrimary: Color(0xFFE5D9BD), // foreground
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabPage())
                    );
                  },
                  child: Text('로그인'),
                ),
                ),

              ],
            ),

          ),
        ),


      ),
    );

  }
}