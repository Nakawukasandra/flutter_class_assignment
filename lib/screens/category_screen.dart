import 'package:dart_models/models/category_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List<CategoryModel> categories = [
    CategoryModel( id:1, 
    name: 'fruits', 
    image: 'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature_thumb.jpg', 
    description:'A variety of fresh fruits available.',),
     CategoryModel( id:1, 
    name: 'fruits', 
    image: 'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature_thumb.jpg', 
    description:'A variety of fresh fruits available.',),
     CategoryModel( id:1, 
    name: 'fruits', 
    image: 'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature_thumb.jpg', 
    description:'A variety of fresh fruits available.',),
     CategoryModel( id:1, 
    name: 'fruits', 
    image: 'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature_thumb.jpg', 
    description:'A variety of fresh fruits available.',),
     CategoryModel( id:1, 
    name: 'fruits', 
    image: 'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature_thumb.jpg', 
    description:'A variety of fresh fruits available.',),
     CategoryModel( id:1, 
    name: 'fruits', 
    image: 'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature_thumb.jpg', 
    description:'A variety of fresh fruits available.',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
           return ListTile(
            leading:Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  fit: BoxFit.cover, 
                  // ignore: prefer_const_constructors
                  image: NetworkImage('https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature_thumb.jpg'),
                  
                )
              ),
            ),
      
              title: Text(categories[index].name),
              subtitle:  Text(categories[index].description),
            );
          }),
    );
  }
}
