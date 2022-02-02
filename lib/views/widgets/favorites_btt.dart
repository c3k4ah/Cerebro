// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:note_book/models/data.dart';

class MyCustomButton extends StatelessWidget {
  final bool active;
  final String title;
  final onTap;
  const MyCustomButton(
      {required Key? key,
      required this.active,
      required this.title,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: !active ? null : Colors.black,
          ),
          padding: EdgeInsets.symmetric(horizontal: 21.0, vertical: 5.0),
          //margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
          child: Text(
            title,
            style: TextStyle(
                color: active ? Colors.white : Colors.grey.shade600,
                fontWeight: FontWeight.normal,
                fontSize: 12,
                overflow: TextOverflow.ellipsis),
          ),
        ),
      ),
    );
  }
}

class CategoriesList extends StatefulWidget {
  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        itemCount: listeFav.length,
        itemBuilder: (BuildContext context, int id) {
          return MyCustomButton(
            title: listeFav[id],
            active: id == _active ? true : false,
            onTap: () {
              setState(() {
                _active = id;
              });
            },
            key: null,
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
