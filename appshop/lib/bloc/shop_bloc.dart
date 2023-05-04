import 'package:appshop/models/CategoryBar_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(ShopInitial()) {
    on<ShopEvent>((event, emit) async {
      /*
      emit(ShopLoading());
      //print("hello");
      try {
        var data = loadDataDummy();
        //print(data);
        if (data == null) {
          emit(ShopErrorState("not found data"));
          return;
        }
        await Future.delayed(Duration(milliseconds: 2000))
            .then((value) => emit(ShopFinishState(data)));

        ShopFinishState(data);
      } catch (e) {
        emit(ShopErrorState(e.toString()));
      }
      */
      //emit(ShopFinishState("hello"));
    });
    on<initFirstpageEvent>((event, emit) {
      emit(ShopFinishState());
    });
  }
}

String loadDataDummy() {
  String dummy = "I say Good bye";
  return dummy;
}
