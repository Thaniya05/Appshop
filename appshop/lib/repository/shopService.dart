import 'package:appshop/repository/model/category.dart';
import 'package:flutter/material.dart';

class ShopService {
  Future<List<CategoryModel>> getDummyCatagory() async {
    return [
      CategoryModel(name: "Hello", src: Icons.abc),
      CategoryModel(name: "Goodbye", src: Icons.ac_unit_sharp),
    ];
  }
}
