import 'package:appshop/bloc/shop_bloc.dart';
import 'package:appshop/repository/model/category.dart';
import 'package:appshop/repository/shopService.dart';

class ShopRepository {
  final ShopService service;

  ShopRepository({required this.service});

  Future<List<CategoryModel>> getDummyCategory() async =>
      service.getDummyCatagory();
}
