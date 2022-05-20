import 'package:flutter/material.dart';
import 'package:repair_home_app/pages/home_page.dart';
import 'package:repair_home_app/widgets/logo_stamps.dart';
import 'package:repair_home_app/widgets/text_field_widget.dart';

class SignUpPage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: _deviceHeight,
        width: _deviceWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/iPhone 11 Pro Max - 3.png",
              ),     
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                   SizedBox(
                    height: _deviceHeight * 0.18,
                  ),
                  Container(
                    height: 120,
                    width: 220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Group 3.png'),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.08,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Create new account',
                      style: TextStyle(
                        color: Color.fromARGB(200, 0, 0, 0),
                        fontSize: 19,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.01,
                  ),
                  textFieldWidget("Email", false),
                  SizedBox(
                    height: _deviceHeight * 0.03,
                  ),
                  textFieldWidget('Enter Password', true),
                  SizedBox(
                    height: _deviceHeight * 0.03,
                  ),
                  textFieldWidget('Confirm Password', true),
                  SizedBox(
                    height: _deviceHeight * 0.03,
                  ),
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
                            MaterialPageRoute(builder: (context) =>  HomePage())
                            );
                    },
                    child: Container(
                      height: 60,
                      width: _deviceWidth,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 1, 48, 117),
                            spreadRadius: 3,
                            blurRadius: 15,
                            offset: Offset(5, 8),
                          ),
                        ],
                        color: const Color.fromARGB(255, 3, 70, 172),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color.fromARGB(190, 255, 255, 255),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.05,
                  ),
                  const Text(
                    '∙  Or sign in with -',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(92, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      logoStamps(const AssetImage("assets/images/googleimg.jpg")),
                      logoStamps(const AssetImage("assets/images/facebookimg.png")),
                      logoStamps(const AssetImage("assets/images/twitterimg1.png"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}