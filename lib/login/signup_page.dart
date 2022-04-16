import 'package:sds_olivew/home_page.dart';
import 'package:sds_olivew/tab_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
        ),



      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'First name*',
                        hintText: "Hyunhee",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Last name*',
                        hintText: 'Kim',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 10,),


              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email*',
                    hintText: "khu123@gmail.com",
                    border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 10,),


              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password*',
                    hintText: "********",
                    border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Confirm password*',
                    hintText: "********",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),

              SizedBox(height: 20,),
              //
              // DropdownButton(
              //     value: _selectedValue,
              //     items: _valueList.map(
              //     (value){
              //       return DropdownMenuItem(child: Text(Value))
              //     }
              //
              // )),
              //
              //

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
                child: Text('회원가입'),
              ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
