import 'package:flutter/material.dart';

class GadgetListTiles extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

    GadgetListTiles({  //why does it accept 'const' when the parameters can be changed?
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,

     }) : super(key: key);

     final IconData icon;
     final String title;
     final String subtitle;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 226, 240, 252),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(43, 0, 115, 150),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: _deviceWidth*0.07,
          ),
          SizedBox(
            width: _deviceWidth*0.258,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color.fromARGB(200, 0, 0, 0),
                    fontSize: 13.5,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: _deviceWidth*0.3,
          ),
          const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
        ]),
      ),
    );
  }
}
class GadgetListTilesWithPrice extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;


    GadgetListTilesWithPrice({  //why does it accept 'const' when the parameters can be changed? Ok it changed after using the device dimensions
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.price

     }) : super(key: key);

     final IconData icon;
     final String title;
     final String subtitle;
     final String price;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 237, 245, 253),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(43, 0, 115, 150),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: _deviceWidth*0.07,
          ),
          SizedBox(
            width: _deviceWidth*0.258,
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color.fromARGB(200, 0, 0, 0),
                    fontSize: 13.5,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: _deviceWidth*0.18,
          ),
          SizedBox( //better than a container for carrying less properties, I guess
            width: _deviceWidth*0.1,
            child: Text(
              price,
              style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13.5,
                  ),
            ),
          ),
          SizedBox(
            width: _deviceWidth*0.02,
          ),
          const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
        ]),
      ),
    );
  }
}

class GadgetListTilesForCartPage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

    GadgetListTilesForCartPage({  //why does it accept 'const' when the parameters can be changed?
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,

     }) : super(key: key);

     final IconData icon;
     final String title;
     final String subtitle;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 237, 245, 253),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0,
            offset: Offset(0,5),
            blurRadius: 3,
            color: Color.fromARGB(118, 158, 158, 158),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(43, 0, 115, 150),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: _deviceWidth*0.07,
          ),
          SizedBox(
            width: _deviceWidth*0.258,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color.fromARGB(200, 0, 0, 0),
                    fontSize: 13.5,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: _deviceWidth*0.3,
          ),
          const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
        ]),
      ),
    );
  }
}










// late Icon icons;
// final containerWithIcons = containerWithIcon(icons);

// Widget gadetsListTiles(Widget containerWithIcon, String top, String bottom, String? amount, Icon icon) {
//   return ListTile(
//     leading: containerWithIcons,
//     trailing: icon,
//     title: Text(top),
//     subtitle: Text(bottom),
//   );
// }
// Widget containerWithIcon(Icon icons) {
//   return Container(
//     color: Colors.teal,
//     child: icons,
//   );
// }

