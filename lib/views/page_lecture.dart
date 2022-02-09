// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/widgets/colors.dart';

class ReadPage extends StatelessWidget {
  const ReadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.back_square,
              color: Colors.green,
              size: 27,
            )),
        title: Text(
          "Titre du livre",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.edit,
                color: Colors.blue,
                size: 27,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.trash,
                color: Colors.redAccent,
                size: 27,
              )),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  margin: EdgeInsets.symmetric(vertical: 15),
                  width: Get.width * .8,
                  height: 50,
                  decoration: BoxDecoration(
                      color: grisSombre,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return const Center(
                                child: Text("Motivation, ",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
