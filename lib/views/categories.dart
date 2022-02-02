// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Categorie extends StatelessWidget {
  const Categorie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Catégories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Iconsax.add_circle4)),
                ],
              ),
            ),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "List categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    child: Row(
                      children: const [
                        Text("All list"),
                        Icon(
                          Iconsax.sort,
                          size: 17,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: Get.height * .65,
              child: OrientationBuilder(builder: (context, orientation) {
                return GridView.count(
                  crossAxisCount: 2,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: Get.width,
                        height: Get.height,
                        decoration: BoxDecoration(
                            color: const Color(0xFFC3E4B5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.folder_25,
                              color: Colors.orange,
                              size: Get.width * .2,
                            ),
                            const Text(
                              "Cuisine",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "15 collections",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: Get.width,
                        height: Get.height,
                        decoration: BoxDecoration(
                            color: const Color(0xFFC3E4B5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.folder_25,
                              color: Colors.orange,
                              size: Get.width * .2,
                            ),
                            const Text(
                              "Cuisine",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "15 collections",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            Center(
              child: Text(
                "Vous avez 2 catégories",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
