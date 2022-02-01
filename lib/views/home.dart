// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/widgets/favorites_btt.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cérebro",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.search_favorite)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.direct_notification))
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: CategoriesList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'add',
        child: const Icon(
          Iconsax.add4,
          size: 50,
        ),
      ),
    );
  }
}
