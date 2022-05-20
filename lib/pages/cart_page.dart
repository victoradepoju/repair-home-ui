import 'package:flutter/material.dart';
import 'package:repair_home_app/my_icons_icons.dart';
import 'package:repair_home_app/widgets/gadgets_list_tiles.dart';

class CartPage extends StatefulWidget {
  
  const CartPage({ Key? key }) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text(
      //     'Cart',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 25,
      //       color: Colors.black,
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
      //     onPressed: (){
      //       Navigator.pop(context);
      //     },
      //     ),
      // ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/cartpage.png",
                ),     
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 25, 35),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: _deviceHeight*0.015),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        IconButton(icon: const Icon(Icons.arrow_back_ios_new), onPressed: (){Navigator.pop(context);},),
                        SizedBox(width: _deviceWidth*0.25),
                        Container(
                          color: Colors.transparent,
                          height: _deviceHeight * 0.056,
                          child: const Center(
                            child: Text(
                              "Cart",
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
                  SizedBox(height: _deviceHeight*0.05),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 226, 240, 252),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        GadgetListTilesForCartPage(icon: Icons.microwave_rounded, title: 'Fix Microwave', subtitle: 'Kitchen'),
                        ListTile(
                          horizontalTitleGap: _deviceWidth*0.069,
                          leading: const Icon(MyIcons.minus_circle, color: Colors.red),
                          title: const Text(
                            'Set up Microwave',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(200, 0, 0, 0)
                            ),
                          ),
                          trailing:  const Text(
                            '\$22',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        ListTile(
                          horizontalTitleGap: _deviceWidth*0.067,
                          leading: const Icon(MyIcons.minus_circle, color: Colors.red),
                          title: const Text(
                            'Repair Microwave',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(200, 0, 0, 0)
                            ),
                          ),
                          trailing: const Text(
                            '\$80',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  GadgetListTilesWithPrice(icon: MyIcons.fridge_outline, title: 'Fix Fridge', subtitle: '2 services', price: '\$70'),
                  const SizedBox(height: 15),
                  GadgetListTilesWithPrice(icon: MyIcons.dishwasher, title: 'Fix Washer', subtitle: '1 service', price: '\$135'),
                  const SizedBox(height: 15),
                  GadgetListTilesWithPrice(icon: MyIcons.monitor, title: 'Fix Computer', subtitle: '1 service', price: '\$30'),
                  SizedBox(
                    height: _deviceHeight*0.15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(52, 10, 52, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total price',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '\$302',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(200, 0, 0, 0),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                          'Make an order',
                          style: TextStyle(
                            color: Color.fromARGB(230, 255, 255, 255),
                            fontSize: 13,
                          ),
                        ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}