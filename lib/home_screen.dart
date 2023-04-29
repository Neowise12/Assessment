import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenheigth = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.red,
              height: 90,
              width: screenwidth * 0.5,

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      height: 15,
                      width: screenwidth * 0.4,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 15,
                      width: screenwidth * 0.3,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: 45,
          ),

          Container(
            height: 90,
            width: screenwidth * 0.5,
            color: Colors.red,
            child: Stack(
              fit:StackFit.loose,
             // overflow:Overflow.visible,
              children: [
              Positioned(
                left : (screenwidth * 0.5)/4,


                child: Container(
                height: 16,
                width: (screenwidth * 0.5)/2,
                color: Colors.grey, ),
              ),
                Positioned(
                  bottom: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                    height: 16,
                    width: screenwidth * 0.5 - 8,
                    color: Colors.green, ),
                  ),
                ),

              ],
            ),

          )



          // Stack(
          //
          //
          //   children: [
          //
          //     Container(
          //       height: 100,
          //       width:screenwidth*0.5 ,
          //       color: Colors.red,
          //     ),
          //
          //   Container(
          //   height: 50,
          //   width:screenwidth*0.3 ,
          //   color: Colors.green,
          //   ),
          //
          //
          //   ],
          // )
        ],
      ),
    );
  }
}
