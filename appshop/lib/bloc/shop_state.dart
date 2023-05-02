part of 'shop_bloc.dart';

@immutable
abstract class ShopState {
  List<String> get _smt => [];
}

class ShopInitial extends ShopState {}

class ShopLoading extends ShopState {}

class ShopFinishState extends ShopState {
  final String smt;

  ShopFinishState(this.smt);

/*
  @override
  List<String> get _smt => smt;*/
}

class ShopErrorState extends ShopState {
  final String errorMessage;

  ShopErrorState(this.errorMessage);
}
