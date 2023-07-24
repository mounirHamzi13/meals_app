import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorites._screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

// class _TabScreenState extends State<TabScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const DefaultTabController(
//       length: 2,
//       initialIndex: 0,
//       child: Scaffold(
//         bottomNavigationBar: TabBar(

//           overlayColor: MaterialStatePropertyAll(Color.fromRGBO(80, 200, 120, 1.0)),
//           indicatorColor: Color.fromRGBO(80, 200, 120, 1.0),
//           // automaticIndicatorColorAdjustment: false,
//           indicator: null,
//           padding: EdgeInsets.all(10),
//           tabs: [
//             Tab(
//               icon: Icon(

//                 Icons.home,
//                 color: Colors.black,
//               ),
//               child: Text("Home" , style: TextStyle(color: Colors.black),),
//             ),
//             Tab(
//               icon: Icon(Icons.favorite, color: Colors.black,),
//               child: Text("Favorite" , style: TextStyle(color: Colors.black),),

//             )
//           ],
//         ),
//         body: TabBarView(children: [
//         CategoriesScreen() , Favorites()
//       ]),
//      ) ,
//      );
//   }
// }
class _TabScreenState extends State<TabScreen> {
  int chosenWidget = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetIndex = [
      const CategoriesScreen(),
      const Favorites(),
    ];
    void selectWidget(index) {
      print("this is the index $index");
      // print("this is the chosen Widget");
      setState(() {
        chosenWidget = index;
      });
    }

    return Scaffold(
      body: widgetIndex[chosenWidget],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        unselectedFontSize: 16,
        currentIndex: chosenWidget,
        // iconSize: 29,
        backgroundColor: Colors.pink,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        onTap: selectWidget,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
              ),
              backgroundColor: Colors.black,
              label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 28,
              ),
              backgroundColor: Colors.black,
              label: "Favorite"),
        ],
      ),
    );
  }
}
