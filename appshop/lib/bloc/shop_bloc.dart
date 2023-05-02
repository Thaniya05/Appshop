import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(ShopInitial()) {
    on<ShopEvent>((event, emit) async {
      emit(ShopLoading());
      //print("hello");
      try {
        var data = loadDataDummy();
        if (data == null) {
          emit(ShopErrorState("not found data"));
          return;
        }
        await Future.delayed(Duration(milliseconds: 2000))
            .then((value) => emit(ShopFinishState(data)));
      } catch (e) {
        emit(ShopErrorState(e.toString()));
      }
    });
  }
}

String loadDataDummy() {
  String dummy = "I say Good bye";
  return dummy;
}
