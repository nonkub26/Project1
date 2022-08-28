import 'package:flutter/material.dart';
import 'package:projectapp/data/recipe_data.dart';
import 'package:projectapp/pages/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10,),
            Text('Food Recipes'),
          ],
        ),
      ),
      // body: const RecipeCard(
      //   title: "Homemade Strawberry Jam", 
      //   rating: "5", 
      //   cookTime: "30 min", 
      //   thumbnailUrl:
      //   "https://lh3.googleusercontent.com/Sd_u2O9p_hwxK4xix_puCGAxWxtf7XyLe1Fhld-4xvxLGo39fYNEiOnij-sT_qn2jZDqWsnv393bqgD1ijoo7Q=s360",
      // ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
            title: recipes[index].name, 
            rating: recipes[index].rating.toString(), 
            cookTime: recipes[index].totalTime, 
            thumbnailUrl: recipes[index].images,
            );
      
        },
        ),
    );
  }
}