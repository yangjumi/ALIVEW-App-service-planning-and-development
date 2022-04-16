import 'package:sds_olivew/account_page.dart';
import 'package:sds_olivew/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
//  final FirebaseUser user;

//  HomePage(this.user);

// appbar 꾸미기
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'OLivew',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: _buildBody());
  }

  // body 작성
  Widget _buildBody() {
    return SafeArea(
      child: _product(),
    );
  }

  // 상품정보 보이기
  Widget _product() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              'Popular cosmetics',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          PopularCosmeticsListview1(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Best review product',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          PopularCosmeticsListview2(),
        ],
      ),
    );
  }
}

// 윗줄 상품 listview 꾸미기
class PopularCosmeticsListview1 extends StatelessWidget {
  const PopularCosmeticsListview1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 180,
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                popularCosmeticsList1[0]['imageUrl'],
              ),
            ),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product1Page()),
                  );
                },
                child: Text(
                  popularCosmeticsList1[0]['name'],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 180,
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                popularCosmeticsList1[1]['imageUrl'],
              ),
            ),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product2Page()),
                  );
                },
                child: Text(
                  popularCosmeticsList1[1]['name'],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Product1Page extends StatefulWidget {
  @override
  _Product1PageState createState() => _Product1PageState();
}

class _Product1PageState extends State<Product1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Detail',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: _reviewAnalysis());
  }

  Widget _reviewAnalysis() {
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
}

class Product2Page extends StatefulWidget {
  @override
  _Product2PageState createState() => _Product2PageState();
}

class _Product2PageState extends State<Product2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Detail',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: _reviewAnalysis());
  }

  Widget _reviewAnalysis() {
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
}



// 아래줄 상품 listview 꾸미기
class PopularCosmeticsListview2 extends StatelessWidget {
  const PopularCosmeticsListview2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 180,
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                popularCosmeticsList2[0]['imageUrl'],
              ),
            ),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product3Page()),
                  );
                },
                child: Text(
                  popularCosmeticsList2[0]['name'],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 180,
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                popularCosmeticsList2[1]['imageUrl'],
              ),
            ),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product4Page()),
                  );
                },
                child: Text(
                  popularCosmeticsList2[1]['name'],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Product3Page extends StatefulWidget {
  @override
  _Product3PageState createState() => _Product3PageState();
}

class _Product3PageState extends State<Product3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Detail',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: _reviewAnalysis());
  }

  Widget _reviewAnalysis() {
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
}

class Product4Page extends StatefulWidget {
  @override
  _Product4PageState createState() => _Product4PageState();
}

class _Product4PageState extends State<Product4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Detail',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: _reviewAnalysis());
  }

  Widget _reviewAnalysis() {
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
}

const popularCosmeticsList1 = [
  {'name': '디 오리엔탈 골드플러스     비비크림 SPF30 PA++', 'imageUrl': 'assets/4030.jpg'},
  {'name': '투 고 쿠션 SPF23 PA+++', 'imageUrl': 'assets/95270.jpg'}
];

const popularCosmeticsList2 = [
  {'name': '스킨 파운데이션 스틱', 'imageUrl': 'assets/730.jpeg'},
  {'name': '본 디스 웨이 파운데이션', 'imageUrl': 'assets/52605.png'}
];
