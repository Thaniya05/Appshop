// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'shop_bloc.dart';

class ShopState extends Equatable {
  ShopState({
    this.categoryItems = const <CategoryBarModel>[],
  });
  final List<CategoryBarModel> categoryItems;

  ShopState copyWith({List<CategoryBarModel>? categoryItems}) {
    return ShopState(
      categoryItems: categoryItems ?? this.categoryItems,
    );
  }

  @override
  List<Object> get props => [categoryItems];
}

class ShopInitial extends ShopState {}

class ShopLoading extends ShopState {}

class ShopFinishState extends ShopState {
  //final String smt;
  // late List<CategoryBarModel> mylist;

  //ShopFinishState();

  List<CategoryBarModel> get mylist => categoryItems;
}

class ShopErrorState extends ShopState {
  final String errorMessage;

  ShopErrorState(this.errorMessage);
}
