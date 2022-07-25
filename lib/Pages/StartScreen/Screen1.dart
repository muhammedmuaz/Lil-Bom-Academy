import 'dart:math';
import 'package:just_audio/just_audio.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

void initializeAudioPlayer() async {
  final player = AudioPlayer();
  // player.setVolume(100);
  var duration = await player.setAsset('assets/music.mp3');
  player.play();
  // player.volume
}

class _Screen1State extends State<Screen1> {
  GlobalKey globalKey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    initializeAudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: deviceHeight(context) * 0.25,
            // backgroundColor: Color.fromRGBO(73, 111, 121, 1.0),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  width: deviceWidth(context) * 0.3,
                  margin: EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            foregroundColor: Colors.amber,
                            backgroundImage: AssetImage(
                              "assets/logo.jpg",
                            ),
                          ),
                        ),
                      ),
                      // Align(
                      //   alignment: Alignment.center,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(top: 12),
                      //     child: Container(
                      //       height: deviceHeight(context) * 0.12,
                      //       width: deviceWidth(context) * 0.2,
                      //       decoration: BoxDecoration(
                      //         color: Colors.black12
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 5),
                          child: Text("Vyonne",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              )),
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: [
                            const Padding(
                              padding: const EdgeInsets.only(left: 27, top: 13),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 10),
                              child: CircularPercentIndicator(
                                radius: 25.0,
                                lineWidth: 7,
                                backgroundColor: Colors.white12,
                                percent: 0.15,
                                progressColor: Colors.blueAccent[200],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            actions: [
              Container(
                width: deviceWidth(context) * 0.2,
                height: deviceHeight(context) * 0.05,
                margin: EdgeInsets.symmetric(
                    vertical: deviceHeight(context) * 0.06,
                    horizontal: deviceWidth(context) * 0.03),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Explore",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.rocket_launch,
                      color: Colors.white,
                      size: 35,
                    )
                  ],
                ),
              )
            ],

            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.amberAccent, child:Image(image: AssetImage("assets/logo.png"))),
            // ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(73, 111, 121, 1.0),
            ),
            child: CustomPaint(
              size: Size(deviceWidth(context), deviceHeight(context)),
              painter: CurvePainter(
                  col1: Color(0xff7bdff2),
                  col2: Color(0xff3a86ff),
                  col3: Color(0xffabff4f),
                  col4: Color(0xfff4e6ae),
                  col5: Color(0xff00c2b5)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Stack(
                  children: [
                    Positioned(
                      top: deviceHeight(context) * 0.9,
                      left: 50,
                      child: Text("How do you Feel?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                    ),
                    Positioned(
                      top: deviceHeight(context) * 1.8,
                      left: 50,
                      child: Text("What's New?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                    ),
                    Column(
                      children: [
                        ClipPath(
                          clipper: CustomClipPath(),
                          child: Container(
                            padding: EdgeInsets.only(top: 40),
                            height: deviceHeight(context) * 0.85,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(170, 207, 211, 0.2)),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.5,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                      vertical: deviceWidth(context) * 0.08,
                                    ),
                                    decoration: BoxDecoration(
                                        // color: Colors.amberAccent,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/img1.jpg',
                                            ),
                                            fit: BoxFit.fill),
                                        // border: Border.all(style: ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                73, 111, 121, 1.0),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.135,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Dance",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth(context) * 0.08),
                                    decoration: const BoxDecoration(
                                        // color: Colors.amberAccent,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/img2.jpg',
                                            ),
                                            fit: BoxFit.fill),

                                        // border: Border.all(style: ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                73, 111, 121, 1.0),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.08,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Vocabulary",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                      vertical: deviceWidth(context) * 0.08,
                                    ),
                                    decoration: BoxDecoration(
                                        // color: Colors.amberAccent,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/img3.jpg',
                                            ),
                                            fit: BoxFit.fill),

                                        // border: Border.all(style: ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                73, 111, 121, 1.0),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.135,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.brown,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Dance",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth(context) * 0.08),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/img4.jpg',
                                            ),
                                            fit: BoxFit.fill),
                                        // color: Colors.amberAccent,
                                        // border: Border.all(style: ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                73, 111, 121, 1.0),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.12,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Singing",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                      vertical: deviceWidth(context) * 0.08,
                                    ),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            // img2
                                            image: AssetImage(
                                              'assets/img2.jpg',
                                            ),
                                            fit: BoxFit.fill),
                                        // color: Colors.amberAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                73, 111, 121, 1.0),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.11,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Memory",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipPath(
                          clipper: CustomClipPath2(),
                          child: Container(
                            height: deviceHeight(context) * 0.85,
                            padding: EdgeInsets.only(top: 40),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(73, 111, 121, 0.3),
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.5,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                      vertical: deviceWidth(context) * 0.08,
                                    ),
                                    decoration: const BoxDecoration(
                                        // color: Colors
                                        //     .amberAccent,
                                        // border: Border.all(style: ),

                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/img5.jpg',
                                            ),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                170, 207, 211, 0.2),
                                            offset: Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.11,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Reading",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth(context) * 0.08),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            // Img2
                                            image: AssetImage(
                                              'assets/img2.jpg',
                                            ),
                                            fit: BoxFit.fill),
                                        // color: Colors.amberAccent,
                                        // border: Border.all(style: ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                170, 207, 211, 0.2),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.125,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Singing",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                      vertical: deviceWidth(context) * 0.08,
                                    ),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/img7.jpg',
                                            ),
                                            fit: BoxFit.fill),

                                        // color: Colors.amberAccent,
                                        // border: Border.all(style: ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                170, 207, 211, 0.2),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.11,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.indigo,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Drawing",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth(context) * 0.08),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/img8.jpg',
                                            ),
                                            fit: BoxFit.fill),

                                        // color: Colors.amberAccent,
                                        // border: Border.all(style: ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                170, 207, 211, 0.2),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.11,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Coloring",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                  Container(
                                    height: deviceHeight(context) * 0.48,
                                    width: deviceHeight(context) * 0.58,
                                    margin: EdgeInsets.symmetric(
                                      vertical: deviceWidth(context) * 0.08,
                                    ),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            // Img2
                                            image: AssetImage(
                                              'assets/img2.jpg',
                                            ),
                                            fit: BoxFit.fill),

                                        // color: Colors.amberAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                170, 207, 211, 0.2),
                                            offset: const Offset(
                                              0,
                                              12.0,
                                            ),
                                            blurRadius: 0,
                                            spreadRadius: 1.0,
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight(context) * 0.277,
                                          bottom: deviceHeight(context) * 0.04,
                                          right: deviceWidth(context) * 0.12,
                                          left: deviceWidth(context) * 0.02),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 7),
                                        margin: EdgeInsets.symmetric(
                                            // vertical: deviceHeight(context) * 0.16,
                                            // horizontal: deviceWidth(context) * 0.075
                                            ),
                                        height: deviceHeight(context) * 0.05,
                                        width: deviceWidth(context) * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text("Tracing",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth(context) * 0.05),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipPath(
                            clipper: CustomClipPath(),
                            child: Container(
                              height: deviceHeight(context) * 0.85,
                              padding: EdgeInsets.only(top: 40),
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(170, 207, 211, 0.2)),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: deviceWidth(context) * 0.05),
                                    Container(
                                      height: deviceHeight(context) * 0.5,
                                      width: deviceHeight(context) * 0.58,
                                      margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth(context) * 0.08,
                                      ),
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'assets/img9.jpg',
                                              ),
                                              fit: BoxFit.fill),

                                          // border: Border.all(style: ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  73, 111, 121, 1.0),
                                              offset: const Offset(
                                                0,
                                                12.0,
                                              ),
                                              blurRadius: 0,
                                              spreadRadius: 1.0,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceHeight(context) * 0.277,
                                            bottom:
                                                deviceHeight(context) * 0.04,
                                            right: deviceWidth(context) * 0.115,
                                            left: deviceWidth(context) * 0.02),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 7),
                                          margin: EdgeInsets.symmetric(
                                              // vertical: deviceHeight(context) * 0.16,
                                              // horizontal: deviceWidth(context) * 0.075
                                              ),
                                          height: deviceHeight(context) * 0.05,
                                          width: deviceWidth(context) * 0.1,
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Text("Reading",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                              )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: deviceWidth(context) * 0.05),
                                    Container(
                                      height: deviceHeight(context) * 0.48,
                                      width: deviceHeight(context) * 0.58,
                                      margin: EdgeInsets.symmetric(
                                          vertical:
                                              deviceWidth(context) * 0.08),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'assets/img10.jpg',
                                              ),
                                              fit: BoxFit.fill),

                                          // border: Border.all(style: ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  73, 111, 121, 1.0),
                                              offset: const Offset(
                                                0,
                                                12.0,
                                              ),
                                              blurRadius: 0,
                                              spreadRadius: 1.0,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceHeight(context) * 0.277,
                                            bottom:
                                                deviceHeight(context) * 0.04,
                                            right: deviceWidth(context) * 0.1,
                                            left: deviceWidth(context) * 0.02),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 7),
                                          margin: EdgeInsets.symmetric(
                                              // vertical: deviceHeight(context) * 0.16,
                                              // horizontal: deviceWidth(context) * 0.075
                                              ),
                                          height: deviceHeight(context) * 0.05,
                                          width: deviceWidth(context) * 0.1,
                                          decoration: BoxDecoration(
                                              color: Colors.indigoAccent,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Text("Reading",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                              )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: deviceWidth(context) * 0.05),
                                    Container(
                                      height: deviceHeight(context) * 0.48,
                                      width: deviceHeight(context) * 0.58,
                                      margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth(context) * 0.08,
                                      ),
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'assets/img11.jpg',
                                              ),
                                              fit: BoxFit.fill),

                                          // border: Border.all(style: ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  73, 111, 121, 1.0),
                                              offset: Offset(
                                                0,
                                                12.0,
                                              ),
                                              blurRadius: 0,
                                              spreadRadius: 1.0,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceHeight(context) * 0.277,
                                            bottom:
                                                deviceHeight(context) * 0.04,
                                            right: deviceWidth(context) * 0.1,
                                            left: deviceWidth(context) * 0.02),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 7),
                                          margin: EdgeInsets.symmetric(
                                              // vertical: deviceHeight(context) * 0.16,
                                              // horizontal: deviceWidth(context) * 0.075
                                              ),
                                          height: deviceHeight(context) * 0.05,
                                          width: deviceWidth(context) * 0.1,
                                          decoration: BoxDecoration(
                                              color: Colors.tealAccent,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Text("Tracing",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                              )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: deviceWidth(context) * 0.05),
                                    Container(
                                      height: deviceHeight(context) * 0.48,
                                      width: deviceHeight(context) * 0.58,
                                      margin: EdgeInsets.symmetric(
                                          vertical:
                                              deviceWidth(context) * 0.08),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              // Imae 2
                                              image: AssetImage(
                                                'assets/img2.jpg',
                                              ),
                                              fit: BoxFit.fill),

                                          // border: Border.all(style: ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  73, 111, 121, 1.0),
                                              offset: const Offset(
                                                0,
                                                12.0,
                                              ),
                                              blurRadius: 0,
                                              spreadRadius: 1.0,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceHeight(context) * 0.277,
                                            bottom:
                                                deviceHeight(context) * 0.04,
                                            right: deviceWidth(context) * 0.135,
                                            left: deviceWidth(context) * 0.02),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 7),
                                          margin: EdgeInsets.symmetric(
                                              // vertical: deviceHeight(context) * 0.16,
                                              // horizontal: deviceWidth(context) * 0.075
                                              ),
                                          height: deviceHeight(context) * 0.05,
                                          width: deviceWidth(context) * 0.1,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Text("Dance",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                              )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: deviceWidth(context) * 0.05),
                                    Container(
                                      height: deviceHeight(context) * 0.48,
                                      width: deviceHeight(context) * 0.58,
                                      margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth(context) * 0.08,
                                      ),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'assets/img4.jpg',
                                              ),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  73, 111, 121, 1.0),
                                              offset: const Offset(
                                                0,
                                                12.0,
                                              ),
                                              blurRadius: 0,
                                              spreadRadius: 1.0,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceHeight(context) * 0.277,
                                            bottom:
                                                deviceHeight(context) * 0.04,
                                            right: deviceWidth(context) * 0.125,
                                            left: deviceWidth(context) * 0.02),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 7),
                                          margin: EdgeInsets.symmetric(
                                              // vertical: deviceHeight(context) * 0.16,
                                              // horizontal: deviceWidth(context) * 0.075
                                              ),
                                          height: deviceHeight(context) * 0.05,
                                          width: deviceWidth(context) * 0.1,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Text("Playing",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                              )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: deviceWidth(context) * 0.05),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPath2 extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CurvePainter extends CustomPainter {
  CurvePainter(
      {required this.col1,
      required this.col2,
      required this.col3,
      required this.col4,
      required this.col5});
  Color col1;
  Color col2;
  Color col3;
  Color col4;
  Color col5;

  @override
  void paint(Canvas canvas, Size size) {
    // Color 1
    var paint = Paint();
    paint.color = col1;
    paint.style = PaintingStyle.fill;

    // Color 2

    var paint2 = Paint();
    paint2.color = col2;
    paint2.style = PaintingStyle.fill;

    // Color 3

    var paint3 = Paint();
    paint3.color = col3;
    paint3.style = PaintingStyle.fill;

    // Color 4
    var paint4 = Paint();
    paint4.color = col4;
    paint4.style = PaintingStyle.fill;

    // Color 5
    var paint5 = Paint();
    paint5.color = col5;
    paint5.style = PaintingStyle.fill;

    List<Paint> painter = [paint, paint2, paint3, paint4, paint5];

    int deviceWidth = (size.width * 0.04).round();
    int deviceheight = (size.height * 0.03).round();

    for (var i = 0; i < (deviceheight + deviceWidth - deviceWidth / 2); i++) {
      int colorcircle = Random().nextInt(5);
      double randomsize = Random().nextInt(10).toDouble();
      double randomwidth = Random().nextInt(size.width.toInt()).toDouble();
      double randomheight = Random().nextInt(size.height.toInt()).toDouble();
      double randomheighttopbottom = Random().nextInt(20).toDouble();
      canvas.drawCircle(
          Offset(randomwidth, randomheight + randomheighttopbottom),
          randomsize,
          painter[colorcircle]);
    }

    // Path bezierPath = Path()
    //   ..moveTo(0, size.height)
    //   ..lineTo(0, size.height * 0.8)
    //   ..quadraticBezierTo(
    //     size.width / 2,
    //     size.height * 0.6,
    //     size.width,
    //     size.height * 0.8,
    //   )
    //   ..lineTo(size.width, size.height);

    // final bezierPaint = Paint()..color = Color.fromRGBO(170, 207, 211, 0.3);
    // // ..shader =
    // //     LinearGradient(colors: [Colors.purple[400]!, Colors.teal[400]!])
    // //         .createShader(Offset(0, size.height * 0.8) & size);

    // canvas.drawPath(bezierPath, bezierPaint);

//     final path = Path();
//     path.moveTo(0, size.height - 100);

//     path.lineTo(
//         size.width, size.height - 100); //start path with this if you are making
//     path.quadraticBezierTo(
//         size.width / 5, size.height - 50, size.width / 3.25, size.height - 100);

//     var secondstart =
//         Offset(size.width - (size.width / 3.24), size.height - 180);

//     path.quadraticBezierTo(size.width / 5, size.height - 180, size.width / 7.25,
//         size.height - 100);
// // var firstStart = Offset(size.width / 5, size.height- 150);
// // //fist point of quadratic bezier curve
// // var firstEnd = Offset(size.width / 2.25, size.height - 150.0);
// // //second point of quadratic bezier curve
// // path.quadraticBezierTo(firstStart.dx, firstStart.dy,
// //firstEnd.dx, firstEnd.dy);

//     // path.lineTo(size.width * 0.5, size.height - 100);
//     // path.quadraticBezierTo(size.width * 0.7, size.height, size.width * 0.9, size.height - 100);
//     path.lineTo(size.width, size.height - 100);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     canvas.drawPath(path, paint);
    // print();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Color 1
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;

    int deviceWidth = (size.width * 0.04).round();
    int deviceheight = (size.height * 0.03).round();

    Path bezierPath = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, size.height * 0.8)
      ..quadraticBezierTo(
        size.width / 2,
        size.height * 0.6,
        size.width,
        size.height * 0.8,
      )
      ..lineTo(size.width, size.height);

    final bezierPaint = Paint()..color = Color.fromRGBO(170, 207, 211, 0.3);
    canvas.drawPath(bezierPath, bezierPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
