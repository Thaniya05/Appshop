import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'category_bar_event.dart';
part 'category_bar_state.dart';

class CategoryBarBloc extends Bloc<CategoryBarEvent, CategoryBarState> {
  CategoryBarBloc() : super(CategoryBarInitial()) {
    on<CategoryBarEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
