import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meals_app/screens/categoryMeals_screen.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({super.key});
  final String id ;
  final String title;
  final Color color;

  CategoryItem({required this.title, required this.color, required this.id});
  @override
  Widget build(BuildContext context) {
    void selectCategory() {
      Navigator
          .pushNamed(context ,'/category_meals' , arguments: {
            'id' : id ,
            'title' : title ,
          });
    }

    return InkWell(
      onTap: selectCategory,
      // splashColor: Theme.of(context).primaryColor,
      splashColor: Colors.amberAccent,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          // "Text in here"
          this.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
