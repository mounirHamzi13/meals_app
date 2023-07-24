import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meals_app/data.dart';
import '../widgets/category_items.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hot Meals" , style: Theme.of(context).textTheme.bodyLarge, ),
        // backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          children: data_food
              .map((e) => CategoryItem(title: e.title, color: e.color, id: e.id,))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            mainAxisExtent: 150,
            crossAxisSpacing: 20, 
            mainAxisSpacing: 20 ,
            
          ),
        ),
      ),
    );
  }
}
