import 'package:flutter/material.dart';

class CategoryWidget  extends StatelessWidget{
  final String category;

  const CategoryWidget({super.key, required this.category});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 56, 56, 56),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/categories/$category.png", height: 48,),
          Text(category, style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }
}
