import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protiaa_appui/screens/detailsPage.dart';
import 'package:protiaa_appui/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backGroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/logos/protiaa.png",
                      height: 50,
                      width: 120,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: Image.asset(
                          "assets/images/pic.jpg",
                          height: 50,
                          width: 50,
                        ).image,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 23,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search...",
                            hintStyle: TextStyle(
                              fontSize: 23,
                              color: Colors.grey,
                            ),
                          ),
                          showCursor: false,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Hero(
                  tag: "orangecard",
                  child: Stack(
                    children: [
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: CustomColors.orangeGradient,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: CustomColors.shadowColor,
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(1, 7),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      // getHashTag(index: index),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logos/dribble.png",
                              width: 80,
                              height: 80,
                            ),
                            // index == 0 ? emptyVerticalBox(height: 10) : Container(),
                            Text(
                              "dribbble",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "@realvjy",
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsPage()));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white38,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "123  ",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "shots",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white38,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "add new",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Hero(
                  tag: "bluecard",
                  child: Stack(
                    children: [
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: CustomColors.blueGradient,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: CustomColors.shadowColor,
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(1, 7),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      // getHashTag(index: index),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logos/behance.png",
                              width: 80,
                              height: 80,
                            ),
                            // index == 0 ? emptyVerticalBox(height: 10) : Container(),
                            Text(
                              "dribbble",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "@realvjy",
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsPage()));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white38,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "207  ",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "shots",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white38,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "add new",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
