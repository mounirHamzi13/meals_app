import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meals_app/data.dart';

class MealDetails extends StatelessWidget {
  static String routeName = 'mael_details';
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object?>;
    final selectedMeal =
        data_meal.firstWhere((element) => routeArgs['title'] == element.title);
    // print(" this is the selected meal ${selectedMeal.steps}");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${selectedMeal.title}",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        // title:  Text("hello"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Ingredients",
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              // height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: selectedMeal.ingredients.map((e) {
                    return Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Text(
                        e,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Steps",
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              // height: 200,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: selectedMeal.steps.map((e) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,0,10),
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Text(
                          e,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
