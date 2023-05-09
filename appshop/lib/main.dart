import 'package:appshop/repository/shopRepository.dart';
import 'package:appshop/repository/shopService.dart';
import 'package:appshop/views/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/shop_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider(
        create: (context) => ShopRepository(service: ShopService()),
        child: BlocProvider(
          create: (context) =>
              ShopBloc(shopRepository: context.read<ShopRepository>())
                ..add(GetDummyCategory()),
          child: HomePage(),
        ),
      ),
    );
  }
}
