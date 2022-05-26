import 'package:flutter/material.dart';

class Exam1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }

}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
    var screenHeight = size.size.height;
    var screenWidth = size.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam1'),
      ),
      body:Stack(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child:
                          Column(
                            children: [
                              Container(
                                color: Colors.red,
                                width: double.infinity,
                                height: screenHeight/9,
                              ),

                              Container(
                                color: Colors.blue,
                                width: double.infinity,
                                height: screenHeight/9,
                              ),
                              Container(
                                color: Colors.green,
                                width: double.infinity,
                                height: screenHeight/9,
                              ),
                            ],
                          ),
                          ),
                          Expanded(
                              flex: 2,
                              child:
                          Container(
                            height: screenHeight/3,
                            color: Colors.purple,
                          )),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: screenWidth/9,
                            height: screenHeight/14,
                            color: Colors.black,),
                          Container(
                            width: screenWidth/9,
                            height: screenHeight/14,
                            color: Colors.yellow,),
                          Container(
                            width: screenWidth/9,
                            height: screenHeight/14,
                            color: Colors.green,),
                        ],
                      )
                    ],
                  ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                color: Colors.blue,
              )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                color: Colors.yellow,
              ))
            ],
          ),
          Positioned(
              top: screenHeight * 0.5,
              left: screenWidth * 0.15,
              child: Opacity(
                opacity: 0.6,
                child: Container(
                  height: screenHeight * 0.5,
                  width: screenWidth * 0.2,
                  color: Colors.black,
                ),
              )
          ),
        ],
      )


    );
  }
}