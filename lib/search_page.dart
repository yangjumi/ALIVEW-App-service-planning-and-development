import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchPage extends StatelessWidget {
//  final FirebaseUser user;

//  SearchPage(this.user);
  String  url = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text(
        'All products',
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 26.0,
            fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  Widget _buildBody(context) {
    return Scaffold(
      body: ListView(                             // 1. 리스트뷰 생성하고
        children: <Widget>[
          ListTile(                           // 2. 리스트 항목 추가하면 끝!
            title: Text('스킨 파운데이션 스틱'),
            onTap: () => _showDialog1(context, '스킨 파운데이션 스틱'),
          ),
          ListTile(
            title: Text('디 오리엔탈 골드플러스 비비크림 SPF30 PA++'),
            onTap: () => _showDialog2(context, '디 오리엔탈 골드플러스 비비크림 SPF30 PA++'),
          ),
          ListTile(
            title: Text('본 디스 웨이 파운데이션'),
            onTap: () => _showDialog3(context, '본 디스 웨이 파운데이션'),
          ),
          ListTile(
            title: Text('투 고 쿠션 SPF23 PA+++'),
            onTap: () => _showDialog4(context, '투 고 쿠션 SPF23 PA+++'),
          ),
        ],
      ),
    );
  }
// 730 상품
  void _showDialog1(context, String s) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return Scaffold(
            body: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      expandedHeight: 300.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Text('스킨 파운데이션 스틱',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            )),
                        background: Image.asset('assets/730.jpeg'),
                      ),
                    ),
                  ];
                },
                body: Container(
                  color: Colors.lightGreen[300],
                  child: SingleChildScrollView(
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                width: 100,
                                padding: EdgeInsets.symmetric(vertical: 5),
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(blurRadius: 5, color: Colors.white)
                                    ]),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 15, color: Colors.grey)
                                  ]),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              padding: EdgeInsets.all(20),
                              child: Image.asset('assets/730detail.png'),
                            ),
                          ],
                        )),
                  ),
                )),
          );
        }
    );
  }

  //4030 상품
 void _showDialog2(context, String s) {
   showDialog(
       context: context,
       builder: (BuildContext ctx) {
         return Scaffold(
           body: NestedScrollView(
               headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                 return <Widget>[
                   SliverAppBar(
                     expandedHeight: 300.0,
                     floating: false,
                     pinned: true,
                     flexibleSpace: FlexibleSpaceBar(
                       centerTitle: true,
                       title: Text('디 오리엔탈 골드플러스 비비크림 SPF30 PA++',
                           style: TextStyle(
                             color: Colors.deepOrange,
                             fontWeight: FontWeight.bold,
                             fontSize: 13.0,
                           )),
                       background: Image.asset('assets/4030.jpg'),
                     ),
                   ),
                 ];
               },
               body: Container(
                 color: Colors.lightGreen[300],
                 child: SingleChildScrollView(
                   child: Center(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           Container(
                               width: 100,
                               padding: EdgeInsets.symmetric(vertical: 5),
                               margin: EdgeInsets.only(top: 10),
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(15),
                                   boxShadow: [
                                     BoxShadow(blurRadius: 5, color: Colors.white)
                                   ]),
                               child: Center(
                                 child: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: <Widget>[
                                     Icon(
                                       Icons.star,
                                       color: Colors.yellow,
                                     ),
                                     Icon(
                                       Icons.star,
                                       color: Colors.yellow,
                                     ),
                                   ],
                                 ),
                               )),
                           SizedBox(
                             height: 12,
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30),
                                 boxShadow: [
                                   BoxShadow(blurRadius: 15, color: Colors.grey)
                                 ]),
                             margin: EdgeInsets.symmetric(horizontal: 20),
                             padding: EdgeInsets.all(20),
                             child: Image.asset('assets/4030detail.png'),
                           ),
                         ],
                       )),
                 ),
               )),
         );
       }
   );
 }

 // 52605 상품
 void _showDialog3(context, String s) {
   showDialog(
       context: context,
       builder: (BuildContext ctx) {
         return Scaffold(
           body: NestedScrollView(
               headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                 return <Widget>[
                   SliverAppBar(
                     expandedHeight: 300.0,
                     floating: false,
                     pinned: true,
                     flexibleSpace: FlexibleSpaceBar(
                       centerTitle: true,
                       title: Text('본 디스 웨이 파운데이션',
                           style: TextStyle(
                             color: Colors.deepOrange,
                             fontWeight: FontWeight.bold,
                             fontSize: 13.0,
                           )),
                       background: Image.asset('assets/52605.png'),
                     ),
                   ),
                 ];
               },
               body: Container(
                 color: Colors.lightGreen[300],
                 child: SingleChildScrollView(
                   child: Center(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           Container(
                               width: 100,
                               padding: EdgeInsets.symmetric(vertical: 5),
                               margin: EdgeInsets.only(top: 10),
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(15),
                                   boxShadow: [
                                     BoxShadow(blurRadius: 5, color: Colors.white)
                                   ]),
                               child: Center(
                                 child: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: <Widget>[
                                     Icon(
                                       Icons.star,
                                       color: Colors.yellow,
                                     ),
                                     Icon(
                                       Icons.star,
                                       color: Colors.yellow,
                                     ),
                                   ],
                                 ),
                               )),
                           SizedBox(
                             height: 12,
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30),
                                 boxShadow: [
                                   BoxShadow(blurRadius: 15, color: Colors.grey)
                                 ]),
                             margin: EdgeInsets.symmetric(horizontal: 20),
                             padding: EdgeInsets.all(20),
                             child: Image.asset('assets/52605detail.png'),
                           ),
                         ],
                       )),
                 ),
               )),
         );
       }
   );
 }

 // 95270 상품
 void _showDialog4(context, String s) {
   showDialog(
       context: context,
       builder: (BuildContext ctx) {
         return Scaffold(
           body: NestedScrollView(
               headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                 return <Widget>[
                   SliverAppBar(
                     expandedHeight: 300.0,
                     floating: false,
                     pinned: true,
                     flexibleSpace: FlexibleSpaceBar(
                       centerTitle: true,
                       title: Text('투 고 쿠션 SPF23 PA+++',
                           style: TextStyle(
                             color: Colors.deepOrange,
                             fontWeight: FontWeight.bold,
                             fontSize: 13.0,
                           )),
                       background: Image.asset('assets/95270.jpg'),
                     ),
                   ),
                 ];
               },
               body: Container(
                 color: Colors.lightGreen[300],
                 child: SingleChildScrollView(
                   child: Center(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           Container(
                               width: 100,
                               padding: EdgeInsets.symmetric(vertical: 5),
                               margin: EdgeInsets.only(top: 10),
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(15),
                                   boxShadow: [
                                     BoxShadow(blurRadius: 5, color: Colors.white)
                                   ]),
                               child: Center(
                                 child: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: <Widget>[
                                     Icon(
                                       Icons.star,
                                       color: Colors.yellow,
                                     ),
                                     Icon(
                                       Icons.star,
                                       color: Colors.yellow,
                                     ),
                                   ],
                                 ),
                               )),
                           SizedBox(
                             height: 12,
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30),
                                 boxShadow: [
                                   BoxShadow(blurRadius: 15, color: Colors.grey)
                                 ]),
                             margin: EdgeInsets.symmetric(horizontal: 20),
                             padding: EdgeInsets.all(20),
                             child: Image.asset('assets/95270detail.png'),
                           ),
                         ],
                       )),
                 ),
               )),
         );
       }
   );
 }
}