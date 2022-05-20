import 'package:flutter/material.dart';
import 'package:repair_home_app/my_icons_icons.dart';
import 'package:repair_home_app/pages/fix_microwave_page.dart';
import 'package:repair_home_app/widgets/gadgets_list_tiles.dart';
import 'package:repair_home_app/widgets/horizontal_scroll_widget.dart';
import 'package:repair_home_app/widgets/logo_stamps.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight;

  HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight((_deviceHeight * 0.015) + 63),
        child: AppBar(
          toolbarHeight: 270,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Align(
            alignment: Alignment.bottomLeft,
            child: IconButton(
              icon: const ImageIcon(AssetImage('assets/images/favicon.png'), color: Colors.black),
              onPressed: (){},
              ),
          ),
          actions: [
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(MyIcons.cart_outline, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/iPhone 11 Pro Max - 4.png",
              ),     
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            const SizedBox(
              height: 38,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "What's broken?",
                  style: TextStyle(
                    color: Color.fromARGB(200, 0, 0, 0),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 1,
                      color: Color.fromARGB(48, 158, 158, 158),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: const TextField(
                  
                  decoration: InputDecoration(
                    labelText: 'Search appliances',
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(MyIcons.card_search_outline),
                    border: InputBorder.none,
                    
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(66, 158, 158, 158),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Offers',
                  style: TextStyle(
                    color: Color.fromARGB(200, 0, 0, 0),
                    fontSize: 19.5,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Categories(), //The stateful class created below,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children:  [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.transparent,
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero
                    ),
                    onPressed: (){
                      Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => FixMicroWavePage())
                              );
                    },
                    child:  GadgetListTiles(
                      icon: Icons.microwave_rounded, title: "Fix Microwave", subtitle: "Kitchen")
                      ),
                  const SizedBox(
                    height: 10,
                  ),
                  GadgetListTiles(icon: MyIcons.television_classic, title: "Fix TV set", subtitle: "Living room"),
                ],
              ),
            ),
        
          ]),
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Offers", "Kitchen", "Livingroom", "Bathroom"];
  int selectedIndex = 0; //First item is selected by default
  //Above index will help in selecting categories

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        SizedBox(
          width: double.infinity,
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
            horizontalScroll(const AssetImage("assets/images/Group 16.png")),
            const SizedBox(width: 15,),
            horizontalScroll(const AssetImage("assets/images/Group 17.png")),
            const SizedBox(width: 15,),
            horizontalScroll(const AssetImage("assets/images/Group 18.png")),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "We can fix it",
              style: TextStyle(
                color: Color.fromARGB(200, 0, 0, 0),
                fontSize: 19.5,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: SizedBox(
            height: 65,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index)),
          ),
        ),
        // gadetsListTiles(containerWithIcon(const Icon(Icons.tv, color: Colors.white,)), 'Fix Microwave', 'Kitchen', null, const Icon(Icons.arrow_forward))
      ]
    );
  }

//The method below was extracted and resulted into the "buildCategory" above. This is for organization
//and better editting
  Widget buildCategory(int index) { 
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
        child: Container(
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.black : Colors.transparent,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.fromLTRB(13, 5, 13, 5),
          child: Center(
            child: Text(
              categories[index],
              style: TextStyle(
                color: selectedIndex == index ? const Color.fromARGB(218, 255, 255, 255) : Colors.grey,
                fontSize: 14,
              ),
              ),
          ),
        ),
      ),
    );
  }
}
