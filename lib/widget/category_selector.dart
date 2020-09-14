import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {

  int selectoredIndex = 0;
  final List<String> categories = ['Message','Online','Group','Requests'];

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectoredIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Text(categories[index],
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: index == selectoredIndex ? Colors.white : Colors.white60,
                      letterSpacing: 1.2),),
              ),
            );
          }
      ),
    );
  }
}
