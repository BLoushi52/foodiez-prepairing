import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_prepairing/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final Catg category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text("${category.name}"),
          Text("${category.description}"),
        ],
      ),
    );
  }
}
