// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:appshop/app/models/Carousel_model.dart';
import 'package:appshop/app/models/catrgorybarmodel.dart';
import 'package:appshop/bloc_structure/views/widget/Hotdeal_widget/Hotdeal.dart';
import 'package:appshop/bloc_structure/views/widget/Recommend_widget/recommend_widget.dart';

class HomeModel {
  final List<CarouselModel> carouselList;
  final List<CategoryBarModel> categorylist;
  final RecommendModel recommendModel;
  final HotDealModel hotDealModel;

  HomeModel(this.carouselList, this.categorylist, this.recommendModel,
      this.hotDealModel);
}
