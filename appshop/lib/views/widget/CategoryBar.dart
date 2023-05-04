// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:appshop/models/CategoryBar_model.dart';

class CategoryBar extends StatelessWidget {
  final List<CategoryBarModel> mylist;

  const CategoryBar({
    Key? key,
    required this.mylist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: mylist
            .map(
              (c) => _buildItem(
                  topic: c.topic, icon: c.icon, iconcolor: c.iconcolor),
            )
            .toList(),
      ),
    );
  }

  Column _buildItem(
      {required String topic,
      required IconData icon,
      required Color iconcolor}) {
    return Column(
      children: [
        RawMaterialButton(
          onPressed: null,
          elevation: 5.0,
          fillColor: Colors.white,
          child: FaIcon(
            FontAwesomeIcons.shirt,
            color: Colors.blueAccent,
            size: 35,
          ),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
        _buildblank(d: 4.0),
        Text(
          "Shirt",
          style: GoogleFonts.sarabun(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}
