import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prepairing/providers/foodiez_provider.dart';
import 'package:flutter_prepairing/widgets/category_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foodiez"),
        actions: [
          CupertinoButton(
            borderRadius: const BorderRadius.all(Radius.circular(150)),
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Icon(CupertinoIcons.person_crop_circle),
            color: Colors.red,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            itemCount: context.watch<CategoryProvider>().categories.length,
            itemBuilder: (context, index) => CategoryCard(
              category: context.watch<CategoryProvider>().categories[index],
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // childAspectRatio: MediaQuery.of(context).size.width /
              //     (MediaQuery.of(context).size.height),
            ),
          ),
        ),
      ),
    );
  }
}
