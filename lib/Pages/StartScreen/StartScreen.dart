import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

import '../Login Page/LoginScreen.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;


        double btnWidth(BuildContext context) =>
        0;

        void Width_Incr(){
          btnWidth(BuildContext context) =>
        MediaQuery.of(context).size.width - 20;
        }

        @override
  void initState() {
    super.initState();
    Width_Incr();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body: Column(
          children: [
            
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: deviceWidth(context) * 0.2),
              child: Stack(
               children: [
                 Padding(
                   padding:  EdgeInsets.only(left: deviceWidth(context) / 3.9, top: 40, bottom: 20),
                   child:  const Text("WELCOME", style: TextStyle(color: Color(0xff191E3B), fontStyle: FontStyle.italic, fontSize: 40, fontWeight: FontWeight.w700),),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: deviceWidth(context) / 3.5, top: 38, bottom: 20),
                   child:  Container(
                     width: 20,
                     child: CustomPaint(
                       painter: window(),
                     ),
                   )),
                 Padding(
                   padding:  EdgeInsets.only(left: deviceWidth(context) / 1.4, top: 38, bottom: 20),
                   child:  Container(
                     
                     width: 20,
                     child: CustomPaint(
                       painter: window2(),
                     ),
                   )),
                 Padding(
                   padding:  EdgeInsets.only(left: deviceWidth(context) / 1.35, top: 60, bottom: 20),
                   child:  Container(
                     
                     width: 20,
                     child: CustomPaint(
                       painter: window(),
                     ),
                   )),
                 Padding(
                   padding:  EdgeInsets.only(left: deviceWidth(context) / 1.35, top: 60, bottom: 20),
                   child:  Container(
                     
                     width: 20,
                     child: CustomPaint(
                       painter: window(),
                     ),
                   )),
                 Padding(
                   padding:  EdgeInsets.only(left: deviceWidth(context) / 4.3, top: 60, bottom: 20),
                   child:  Container(
                     
                     width: 20,
                     child: CustomPaint(
                       painter: window4(),
                     ),
                   )),
                 Padding(
                   padding:  EdgeInsets.only(left: deviceWidth(context) / 2.5, top: 95, bottom: 20),
                   child:  Container(
                     
                     width: 20,
                     child: CustomPaint(
                       painter: window4(),
                     ),
                   )),
                 

               ], 
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: deviceWidth(context) * 0.2),
              child: Image(image: AssetImage("assets/cartoon.png")),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric( horizontal: deviceWidth(context) / 4),
              child: Text("Start play", style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.symmetric( horizontal: deviceWidth(context) / 10),
              child: Text("and Learn Today", style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),

            AnimatedContainer(
              duration: Duration(milliseconds: 1500),
              margin: EdgeInsets.symmetric( horizontal: deviceWidth(context) / 10),
              width: deviceWidth(context) - 20,
              height: 60,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
              }, child: RichText(text: TextSpan(
                children: 
                [
                  TextSpan(
                    text: "Get Started  ", style: TextStyle(color: Colors.deepPurple, fontSize: 20)
                  ),
                  WidgetSpan(
        child: Icon(Icons.rocket_launch,  size: 16, color: Colors.deepPurple ),
      ),
                ]
              )) , style: ButtonStyle(
                // foregroundColor: Color(0xffColor(0xffe4e6f3)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      // side: BorderSide()
    ),
    
  ),

), 
)
            )
,
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text("I have an account", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600 ),),
            )


          ],
        )
      ),
    );
  }
}





class window extends CustomPainter{

@override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.blueAccent;
      var radius = min(size.height, size.width);

      canvas.drawCircle(Offset(0,0), radius + 10, paint1);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}
class window2 extends CustomPainter{

@override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.yellowAccent;
      var radius = min(size.height, size.width);

      canvas.drawCircle(Offset(0,0), radius + 10, paint1);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}
class window3 extends CustomPainter{

@override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.yellowAccent;
      var radius = min(size.height, size.width);

      canvas.drawCircle(Offset(0,0), radius + 8, paint1);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}
class window4 extends CustomPainter{

@override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.yellowAccent;
      var radius = min(size.height, size.width);

      canvas.drawCircle(Offset(0,0), radius + 5, paint1);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}
// }

// class waveclipper extends CustomClipper<Path>{

// @override
// Path getClip(Size size) {
//   double height = size.height;
//     double width = size.width;
//     var controlPoint = Offset(size.width / 2, size.height / 2); 
//     var endPoint = Offset(size.width, size.height);
//     print("Control Point");
//     print(controlPoint)
//     ;
//     print("End Point");
//     print(endPoint);
    
//   Path path = Path();
//    path.lineTo(0, height-100);
//     path.quadraticBezierTo(width/2, height, width, height-100);
//     path.lineTo(width, 0);
//     path.close();

  
//   // ..moveTo(size.width / 2, 20)
//   //   ..lineTo(0, size.height) // Add line p1p2
//   //   ..lineTo(size.width, size.height) // Add line p2p3
//     // ..close();
  
//   return path;
// }

//    @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }

// }


// class waveclipper2 extends CustomClipper<Path>{

// @override
// Path getClip(Size size) {
//   double height = size.height;
//     double width = size.width;
    
//     var controlPoint = Offset(size.width / 2, size.height / 2); 
//     var endPoint = Offset(size.width, size.height);
    
//     print("Control Point");
//     print(controlPoint)
//     ;
//     print("End Point");
//     print(endPoint);
    
//   Path path = Path();
//    path.lineTo(0, height-150);
//     path.quadraticBezierTo(width/2, height, width , height-10);
//     path.lineTo(width, 0);
//     path.close();

  
//   // ..moveTo(size.width / 2, 20)
//   //   ..lineTo(0, size.height) // Add line p1p2
//   //   ..lineTo(size.width, size.height) // Add line p2p3
//     // ..close();
  
//   return path;
// }

//    @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }

// }
// class waveclipper3 extends CustomClipper<Path>{

// @override
// Path getClip(Size size) {
//   double height = size.height;
//     double width = size.width;
    
//     var controlPoint = Offset(size.width / 2, size.height / 2); 
//     var endPoint = Offset(size.width, size.height);
    
//   Path path = Path();
//    path.lineTo(0, height-10);
//     path.quadraticBezierTo(width/2, height, width, height-150);
//     path.lineTo(width, 0);
//     path.close();

  
//   // ..moveTo(size.width / 2, 20)
//   //   ..lineTo(0, size.height) // Add line p1p2
//   //   ..lineTo(size.width, size.height) // Add line p2p3
//     // ..close();
  
//   return path;
// }

//    @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }

// }