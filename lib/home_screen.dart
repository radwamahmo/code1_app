import 'package:flutter/material.dart';
import 'package:new_app/category.dart';
import 'package:new_app/homescree_grid_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  List<Category> categogriesList = [];

  HomeScreen() {
    createCategory();
  }

  void createCategory() {
    for (int i = 0; i < 1000; i++) {
      categogriesList.add(Category(
          imagepath: 'assets/images/car.jpg', name: 'Category num $i'));
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Practice'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                        context, (route) => route.settings.name == 'Login');
                  },
                  child: Text('Go to Login')),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        // mainAxisSpacing:10  ,
                        // crossAxisSpacing:20 ,
                        childAspectRatio: 1 / 1),
                    itemBuilder: (context, index) {
                      return Homescreengridwidget(
                        name: categogriesList[index].name,
                        imagepath: categogriesList[index].imagepath,
                      );
                    },
                    itemCount: categogriesList.length,
                  ),
                ),
              ),
            ],
          ));
    }
  }
}
