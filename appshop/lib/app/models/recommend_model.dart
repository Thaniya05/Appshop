class Item {
  final String pathImg;
  final String name;
  final String price;
  final String routepath;

  Item(this.pathImg, this.name, this.price, this.routepath);
}

class RecommendModel {
  int maxItem;
  List<Item> items;
  RecommendModel({
    required this.maxItem,
    required this.items,
  });
}
