import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prepairing/models/category_model.dart';

class CategoryProvider extends ChangeNotifier {
  List<Catg> categories = [
    Catg(
        name: "Kuwaiti Food",
        description: "food that is main origin from Kuwait"),
    Catg(
        name: "Mexican Food",
        description: "food that is main origin from Mexico"),
    Catg(
        name: "Japanese Food",
        description: "food that is main origin from Japan"),
  ];

  // CategoryProvider() {
  //   loadCategory();
  // }
}

Future<void> loadCategory() async {
  // pets.clear();

  // var response = await Client.dio.get("/pets");
  // var petJsonList = response.data as List;

  // catg = petJsonList.map((petJson) => Catg.fromMap(petJson)).toList();

  // notifyListeners();
}
