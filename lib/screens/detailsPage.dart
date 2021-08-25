import 'package:flutter/material.dart';
import 'package:protiaa_appui/utils/ScrollableDetails.dart';
import 'package:protiaa_appui/utils/colors.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backGroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: 'orangecard',
                  child: Material(
                    type: MaterialType.transparency,
                    child: Stack(
                      children: [
                        Container(
                          height: 315,
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
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 20,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 75, right: 30, left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logos/dribble.png",
                                    width: 80,
                                    height: 80,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "dribbble",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(
                                color: Colors.white38,
                                indent: 50,
                                endIndent: 50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "123",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "shots",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white38,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "623k",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "likes",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white38,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "129k",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "fans",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white38,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                    child: Column(
                  children: [
                    ScrollableDetails(
                      image: "1.jpg",
                      title: "gumao..",
                      details: "5 may, 2020",
                      stats: "5.9k",
                    ),
                    ScrollableDetails(
                      image: "2.jpg",
                      title: "elveno - web...",
                      details: "25 april, 2020",
                      stats: "25.k",
                    ),
                    ScrollableDetails(
                      image: "3.jpg",
                      title: "contra uikit",
                      details: "29 march, 2020",
                      stats: "35.9k",
                    ),
                    ScrollableDetails(
                      image: "4.jpg",
                      title: "running girl",
                      details: "15 january, 2019",
                      stats: "55.7k",
                    )
                  ],
                ))
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 25,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
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
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
