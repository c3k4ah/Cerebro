// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/widgets/colors.dart';

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
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                                child: SimpleDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Add categorie',
                                        style: TextStyle(color: grisSombre),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Iconsax.close_circle,
                                            color: Colors.redAccent,
                                          )),
                                    ],
                                  ),
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        children: const [
                                          ListTile(
                                            leading: Icon(
                                              Iconsax.folder_25,
                                              color: Colors.orange,
                                            ),
                                            title: Text(
                                              "Cuisine(05)",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            trailing: Icon(
                                              Iconsax.trash,
                                              color: Colors.red,
                                            ),
                                          ),
                                          ListTile(
                                            leading: Icon(
                                              Iconsax.folder_25,
                                              color: Colors.orange,
                                            ),
                                            title: Text(
                                              "Philos(11)",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            trailing: Icon(
                                              Iconsax.trash,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 10),
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFD3D3D3),
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          width: Get.width * .5,
                                          height: 30,
                                          child: const TextField(
                                            decoration:
                                                InputDecoration.collapsed(
                                              border: InputBorder.none,
                                              hintText: '',
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Iconsax.tick_square4,
                                              color: Colors.blue,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      icon: Icon(Iconsax.add_circle4)),
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
                      onTap: () {
                        Get.toNamed('/listCtg');
                      },
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

class CategorieList extends StatelessWidget {
  const CategorieList({Key? key}) : super(key: key);

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
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Catégories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
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
                return ListView(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        height: Get.height * .1,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                "Chemin vers le succes rapidement",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            SizedBox(
                              width: Get.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Succes",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "facile",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "2022/08/5",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
