import 'package:appshop/bloc/shop_bloc.dart';
import 'package:appshop/models/CategoryBar_model.dart';
import 'package:appshop/views/widget/CategoryBar.dart';
import 'package:appshop/views/widget/CustomAppbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widget/CustomCarousel.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ShopBloc>(context).add(initFirstpageEvent());

    List<CategoryBarModel> mylistdummy = [
      CategoryBarModel(
        topic: "Shirt",
        icon: FontAwesomeIcons.shirt,
        iconcolor: Colors.black,
      ),
      CategoryBarModel(
        topic: "Ticket",
        icon: FontAwesomeIcons.ticket,
        iconcolor: Colors.black,
      ),
      CategoryBarModel(
        topic: "Book",
        icon: FontAwesomeIcons.book,
        iconcolor: Colors.black,
      ),
      CategoryBarModel(
        topic: "Car",
        icon: FontAwesomeIcons.car,
        iconcolor: Colors.black,
      ),
    ];

    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        if (state is ShopLoading || state is ShopInitial) {
          return Container(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(),
          );
        }
        if (state is ShopFinishState) {
          return Scaffold(
            body: Column(
              children: [
                AppbarwithSearch(),
                _buildblank(d: 10.0),
                //CarouselWithIndicatorDemo(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CustomCarousel(
                    myheight: 0,
                    mywidth: 0,
                    myurl: [],
                  ),
                ),
                _buildblank(d: 10.0),
                //CategoryBar(mylist: state.)
                CategoryBar(mylist: mylistdummy)
              ],
            ),
          );
        }
        return Scaffold();
      },
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}
