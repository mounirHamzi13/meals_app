import 'package:flutter/material.dart';
import 'package:meals_app/screens/Tab_contoller.dart';
import 'package:meals_app/screens/categoryMeals_screen.dart';
import 'package:meals_app/screens/meal_detail.dart'; 
import 'screens/categories_screen.dart'; 
void main() {
  runApp( 
    Myapp() 

  );
} 

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: "hot meals", 
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink,
        // scaffoldBackgroundColor: Colors.pink, 
        appBarTheme: AppBarTheme(color: Colors.pink),
        fontFamily: 'Raleway' ,
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1), fontSize: 18) ,
          bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1) , fontSize: 22) ,
          titleLarge: const TextStyle(fontSize: 24 , fontFamily: 'RobotoCondensed', fontWeight: FontWeight.w700) ,
        ),

      ), 
      // home: CategoriesScreen(), 
      routes: {
        '/' : (context)=> TabScreen() ,
        '/category_meals' : (context) => CategoryMealsScreen() , 
        MealDetails.routeName : (context)=>MealDetails() ,
  },
    ) ;
  }
} 


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//       appBar: AppBar( 
//         title: Text("hot meals"), 
//       ),
//         body : Center( 
//           child: Text("Navigation Time"), 
//         ) ,
//     );
//   }
// }