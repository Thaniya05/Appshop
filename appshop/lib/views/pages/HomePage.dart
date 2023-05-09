import 'package:appshop/views/widget/CategoryBar_widget/CategoryBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:appshop/bloc/shop_bloc.dart';

import 'package:appshop/views/widget/AppbarSearch_widget/CustomAppbar.dart';
import 'package:appshop/views/widget/Carousel_widget/CustomCarousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //BlocProvider.of<ShopBloc>(context).add();

    return BlocBuilder<ShopBloc, ShopState>(builder: (context, state) {
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
            CategoryBar(),
          ],
        ),
      );
    });
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}
