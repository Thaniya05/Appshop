import 'package:appshop/bloc/shop_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ShopBloc>(context).add(SearchEvent("hello"));
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        if (state is ShopLoading || state is ShopInitial) {
          return CircularProgressIndicator();
        }
        if (state is ShopFinishState) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
            ),
            body: Container(
              child: Text(state.smt),
            ),
          );
        }
        return Scaffold();
      },
    );
  }
}
