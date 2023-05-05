part of 'shop_bloc.dart';

@immutable
abstract class ShopEvent {}

class SearchEvent extends ShopEvent {
  final String SearchText;

  SearchEvent(this.SearchText);
}

class initFirstpageEvent extends ShopEvent {}
