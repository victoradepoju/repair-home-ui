import 'package:flutter/material.dart';
import 'package:repair_home_app/my_icons_icons.dart';
import 'package:repair_home_app/pages/cart_page.dart';

class FixMicroWavePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  late double _bottomHeight;

   FixMicroWavePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _bottomHeight = 0.45 * MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(45, 244, 67, 54),
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.menu, color: Colors.black),
      //     onPressed: (){},
      //     ),
      //   actions: [
      //     IconButton(
      //       onPressed: (){}, 
      //       icon: const Icon(Icons.tv, color: Colors.black),
      //     ),
      //   ],
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/iPhone 11 Pro Max - 5 (1).png",
              ),     
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(height: _deviceHeight*0.015, color: const Color.fromARGB(45, 244, 67, 54),),
            Container(
              height: _deviceHeight * 0.533,
              width: _deviceWidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                color:  Color.fromARGB(45, 244, 67, 54),
                image: DecorationImage(image: AssetImage("assets/images/Rectangle 31.png"))
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(icon: const Icon(Icons.arrow_back_ios_new), onPressed: (){Navigator.pop(context);},),
                        SizedBox(width: _deviceWidth*0.17),
                        Container(
                          color: Colors.transparent,
                          height: _deviceHeight * 0.056,
                          child: const Center(
                            child: Text(
                              "Fix Microwave",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(200, 0, 0, 0)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: _deviceHeight * 0.45,
              width: _deviceWidth,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: _deviceWidth * 0.06,),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height:_bottomHeight / 14,),
                    Row(
                      children: [
                        Container(
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(45, 244, 67, 54),
                          ),
                          height: _bottomHeight/7,
                          width: _deviceWidth * 0.6192,
                          child: const Center(
                            child: Text(
                              'Reviews',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 170, 132, 132),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: _deviceWidth * 0.0344),
                        Container(
                          height: _bottomHeight/7,
                          width: _deviceWidth * 0.2064,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            MyIcons.chat_processing_outline,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: _bottomHeight/14,),
                    Container(
                      height: _bottomHeight/7,
                      width: _deviceWidth*0.86,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 1,
                            color: Color.fromARGB(48, 158, 158, 158),
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('Repair', style: TextStyle(fontSize: 12, color: Color.fromARGB(200, 0, 0, 0))),
                            Text("\$52", style: TextStyle(fontSize: 12, color: Color.fromARGB(200, 0, 0, 0))),
                          ]),
                      ),
                    ),
                    SizedBox(height: _bottomHeight/14,),
                    Container(
                      height: _bottomHeight/7,
                      width: _deviceWidth*0.86,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 1,
                            color: Color.fromARGB(48, 158, 158, 158),
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('Setup', style: TextStyle(fontSize: 12, color: Color.fromARGB(200, 0, 0, 0))),
                            Text("\$12", style: TextStyle(fontSize: 12, color: Color.fromARGB(200, 0, 0, 0))),
                          ]),
                      ),
                    ),
                    SizedBox(height: _bottomHeight/14,),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.transparent,
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: (){
                            Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => CartPage())
                                    );
                          },
                          child: Container(
                            height: _bottomHeight/7,
                            width: _deviceWidth*0.4128,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            child: const Center(
                              child: Text(
                                'Order repair',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: _deviceWidth*0.0344),
                        Container(
                          height: _bottomHeight/7,
                          width: _deviceWidth*0.4128,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 1,
                                color: Color.fromARGB(48, 158, 158, 158),
                              ),
                            ]
                          ),
                          child: const Center(
                            child:  Text(
                              'Order setup',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(200, 0, 0, 0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]
                ,),
              )
            ),
          ],
        ),
      ),
    );
  }
}